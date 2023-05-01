.DEFAULT_TARGET: help

help:
	@echo "Dart Pinecone client Makefile"

outdated:
	dart pub outdated

upgrade:
	dart pub upgrade

build:
	rm -rf lib/src/generated/
	dart pub get
	dart run swagger_parser:generate
	cp -r overrides/* lib/src/generated/shared_models/
	dart run build_runner build --delete-conflicting-outputs
	dart fix --apply
	dart format lib/*