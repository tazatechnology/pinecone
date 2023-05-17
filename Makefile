.DEFAULT_TARGET: help
.PHONY: build test docs

PINECONE_INDEX_URL=https://docs.pinecone.io/reference/list_collections?json=on
PINECONE_VECTOR_URL=https://docs.pinecone.io/reference/query?json=on
help:
	@echo "Dart Pinecone client Makefile"

outdated:
	dart pub outdated

upgrade:
	dart pub upgrade

# Download the reference OpenAPI spec from Pinecone
# Remove all "x-readme" fields
# Sometimes this works... sometimes it doesnt
download:
	curl $(PINECONE_INDEX_URL) | \
	jq .oasDefinition | \
	jq 'del(..|."x-readme"?)' --indent 2 > oas/openapi_index.json
	curl $(PINECONE_VECTOR_URL) | \
	jq .oasDefinition | \
	jq 'del(..|."x-readme"?)' --indent 2 > oas/openapi_vector.json

# Build the Dart client from the OpenAPI spec
build:
	dart pub get
	dart run oas/main.dart
	dart run build_runner build --delete-conflicting-outputs
	dart fix --apply .
	dart format .
	
test:
	dart pub get && \
	dart format \
		--set-exit-if-changed . && \
	dart analyze \
		--fatal-infos && \
	clear && dart test \
		--concurrency=1 \
		--timeout=600s \
		--reporter=expanded \
		--chain-stack-traces
	
docs:
	@rm -rf docs
	@dart doc --validate-links --output docs