// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Index _$$_IndexFromJson(Map<String, dynamic> json) => _$_Index(
      database:
          IndexDatabase.fromJson(json['database'] as Map<String, dynamic>),
      status: IndexStatus.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IndexToJson(_$_Index instance) => <String, dynamic>{
      'database': instance.database,
      'status': instance.status,
    };

_$_IndexDatabase _$$_IndexDatabaseFromJson(Map<String, dynamic> json) =>
    _$_IndexDatabase(
      name: json['name'] as String,
      metric: $enumDecode(_$SearchMetricEnumMap, json['metric']),
      dimension: json['dimension'] as int,
      replicas: json['replicas'] as int,
      shards: json['shards'] as int,
      pods: json['pods'] as int,
      podType: $enumDecodeNullable(_$PodTypeEnumMap, json['pod_type'],
          unknownValue: JsonKey.nullForUndefinedEnumValue),
    );

Map<String, dynamic> _$$_IndexDatabaseToJson(_$_IndexDatabase instance) =>
    <String, dynamic>{
      'name': instance.name,
      'metric': _$SearchMetricEnumMap[instance.metric]!,
      'dimension': instance.dimension,
      'replicas': instance.replicas,
      'shards': instance.shards,
      'pods': instance.pods,
      'pod_type': _$PodTypeEnumMap[instance.podType],
    };

const _$SearchMetricEnumMap = {
  SearchMetric.euclidean: 'euclidean',
  SearchMetric.cosine: 'cosine',
  SearchMetric.dotproduct: 'dotproduct',
};

const _$PodTypeEnumMap = {
  PodType.s1x1: 's1.x1',
  PodType.s1x2: 's1.x2',
  PodType.s1x4: 's1.x4',
  PodType.s1x8: 's1.x8',
  PodType.p1x1: 'p1.x1',
  PodType.p1x2: 'p1.x2',
  PodType.p1x4: 'p1.x4',
  PodType.p1x8: 'p1.x8',
  PodType.p2x1: 'p2.x1',
  PodType.p2x2: 'p2.x2',
  PodType.p2x4: 'p2.x4',
  PodType.p2x8: 'p2.x8',
};

_$_IndexStatus _$$_IndexStatusFromJson(Map<String, dynamic> json) =>
    _$_IndexStatus(
      host: json['host'] as String,
      port: json['port'] as int,
      state: $enumDecode(_$IndexStateEnumMap, json['state'],
          unknownValue: IndexState.terminating),
      ready: json['ready'] as bool,
    );

Map<String, dynamic> _$$_IndexStatusToJson(_$_IndexStatus instance) =>
    <String, dynamic>{
      'host': instance.host,
      'port': instance.port,
      'state': _$IndexStateEnumMap[instance.state]!,
      'ready': instance.ready,
    };

const _$IndexStateEnumMap = {
  IndexState.initializing: 'Initializing',
  IndexState.scalingUp: 'ScalingUp',
  IndexState.scalingDown: 'ScalingDown',
  IndexState.terminating: 'Terminating',
  IndexState.ready: 'Ready',
};

_$_IndexStats _$$_IndexStatsFromJson(Map<String, dynamic> json) =>
    _$_IndexStats(
      namespaces: (json['namespaces'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, NamespaceStats.fromJson(e as Map<String, dynamic>)),
      ),
      dimension: json['dimension'] as int?,
      indexFullness: (json['indexFullness'] as num?)?.toDouble(),
      totalVectorCount: json['totalVectorCount'] as int?,
    );

Map<String, dynamic> _$$_IndexStatsToJson(_$_IndexStats instance) =>
    <String, dynamic>{
      'namespaces': instance.namespaces,
      'dimension': instance.dimension,
      'indexFullness': instance.indexFullness,
      'totalVectorCount': instance.totalVectorCount,
    };

_$_NamespaceStats _$$_NamespaceStatsFromJson(Map<String, dynamic> json) =>
    _$_NamespaceStats(
      vectorCount: json['vectorCount'] as int,
    );

Map<String, dynamic> _$$_NamespaceStatsToJson(_$_NamespaceStats instance) =>
    <String, dynamic>{
      'vectorCount': instance.vectorCount,
    };

_$_Collection _$$_CollectionFromJson(Map<String, dynamic> json) =>
    _$_Collection(
      name: json['name'] as String,
      status: $enumDecode(_$CollectionStatusEnumMap, json['status']),
      size: json['size'] as int?,
      dimension: json['dimension'] as int,
    );

Map<String, dynamic> _$$_CollectionToJson(_$_Collection instance) =>
    <String, dynamic>{
      'name': instance.name,
      'status': _$CollectionStatusEnumMap[instance.status]!,
      'size': instance.size,
      'dimension': instance.dimension,
    };

const _$CollectionStatusEnumMap = {
  CollectionStatus.initializing: 'Initializing',
  CollectionStatus.ready: 'Ready',
};

_$_ConfigureIndexRequest _$$_ConfigureIndexRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ConfigureIndexRequest(
      replicas: json['replicas'] as int? ?? 1,
      podType: $enumDecodeNullable(_$PodTypeEnumMap, json['pod_type'],
          unknownValue: JsonKey.nullForUndefinedEnumValue),
    );

Map<String, dynamic> _$$_ConfigureIndexRequestToJson(
        _$_ConfigureIndexRequest instance) =>
    <String, dynamic>{
      'replicas': instance.replicas,
      'pod_type': _$PodTypeEnumMap[instance.podType],
    };

_$_CreateCollectionRequest _$$_CreateCollectionRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CreateCollectionRequest(
      name: json['name'] as String,
      source: json['source'] as String,
    );

Map<String, dynamic> _$$_CreateCollectionRequestToJson(
        _$_CreateCollectionRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'source': instance.source,
    };

_$_CreateIndexRequest _$$_CreateIndexRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CreateIndexRequest(
      name: json['name'] as String,
      dimension: json['dimension'] as int,
      metric: $enumDecodeNullable(_$SearchMetricEnumMap, json['metric']) ??
          SearchMetric.cosine,
      pods: json['pods'] as int? ?? 1,
      replicas: json['replicas'] as int? ?? 1,
      podType: $enumDecodeNullable(_$PodTypeEnumMap, json['pod_type']) ??
          PodType.p1x1,
      metadataConfig: json['metadata_config'] as Map<String, dynamic>?,
      sourceCollection: json['source_collection'] as String?,
    );

Map<String, dynamic> _$$_CreateIndexRequestToJson(
        _$_CreateIndexRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'dimension': instance.dimension,
      'metric': _$SearchMetricEnumMap[instance.metric]!,
      'pods': instance.pods,
      'replicas': instance.replicas,
      'pod_type': _$PodTypeEnumMap[instance.podType]!,
      'metadata_config': instance.metadataConfig,
      'source_collection': instance.sourceCollection,
    };

_$_IndexStatsRequest _$$_IndexStatsRequestFromJson(Map<String, dynamic> json) =>
    _$_IndexStatsRequest(
      filter: json['filter'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_IndexStatsRequestToJson(
        _$_IndexStatsRequest instance) =>
    <String, dynamic>{
      'filter': instance.filter,
    };

_$_DeleteRequest _$$_DeleteRequestFromJson(Map<String, dynamic> json) =>
    _$_DeleteRequest(
      ids: (json['ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
      deleteAll: json['deleteAll'] as bool?,
      namespace: json['namespace'] as String?,
      filter: json['filter'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_DeleteRequestToJson(_$_DeleteRequest instance) =>
    <String, dynamic>{
      'ids': instance.ids,
      'deleteAll': instance.deleteAll,
      'namespace': instance.namespace,
      'filter': instance.filter,
    };

_$_QueryRequest _$$_QueryRequestFromJson(Map<String, dynamic> json) =>
    _$_QueryRequest(
      namespace: json['namespace'] as String?,
      topK: json['topK'] as int? ?? 10,
      filter: json['filter'] as Map<String, dynamic>?,
      includeValues: json['includeValues'] as bool? ?? false,
      includeMetadata: json['includeMetadata'] as bool? ?? false,
      vector: (json['vector'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      sparseVector: json['sparseVector'] == null
          ? null
          : SparseVector.fromJson(json['sparseVector'] as Map<String, dynamic>),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_QueryRequestToJson(_$_QueryRequest instance) =>
    <String, dynamic>{
      'namespace': instance.namespace,
      'topK': instance.topK,
      'filter': instance.filter,
      'includeValues': instance.includeValues,
      'includeMetadata': instance.includeMetadata,
      'vector': instance.vector,
      'sparseVector': instance.sparseVector,
      'id': instance.id,
    };

_$_QueryResponse _$$_QueryResponseFromJson(Map<String, dynamic> json) =>
    _$_QueryResponse(
      namespace: json['namespace'] as String,
      matches: (json['matches'] as List<dynamic>)
          .map((e) => VectorMatch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QueryResponseToJson(_$_QueryResponse instance) =>
    <String, dynamic>{
      'namespace': instance.namespace,
      'matches': instance.matches,
    };

_$_FetchResponse _$$_FetchResponseFromJson(Map<String, dynamic> json) =>
    _$_FetchResponse(
      namespace: json['namespace'] as String,
      vectors: (json['vectors'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Vector.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_FetchResponseToJson(_$_FetchResponse instance) =>
    <String, dynamic>{
      'namespace': instance.namespace,
      'vectors': instance.vectors,
    };

_$_UpdateRequest _$$_UpdateRequestFromJson(Map<String, dynamic> json) =>
    _$_UpdateRequest(
      id: json['id'] as String,
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      sparseValues: json['sparseValues'] == null
          ? null
          : SparseVector.fromJson(json['sparseValues'] as Map<String, dynamic>),
      setMetadata: json['setMetadata'] as Map<String, dynamic>?,
      namespace: json['namespace'] as String?,
    );

Map<String, dynamic> _$$_UpdateRequestToJson(_$_UpdateRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'values': instance.values,
      'sparseValues': instance.sparseValues,
      'setMetadata': instance.setMetadata,
      'namespace': instance.namespace,
    };

_$_UpsertRequest _$$_UpsertRequestFromJson(Map<String, dynamic> json) =>
    _$_UpsertRequest(
      vectors: (json['vectors'] as List<dynamic>)
          .map((e) => Vector.fromJson(e as Map<String, dynamic>))
          .toList(),
      namespace: json['namespace'] as String?,
    );

Map<String, dynamic> _$$_UpsertRequestToJson(_$_UpsertRequest instance) =>
    <String, dynamic>{
      'vectors': instance.vectors,
      'namespace': instance.namespace,
    };

_$_UpsertResponse _$$_UpsertResponseFromJson(Map<String, dynamic> json) =>
    _$_UpsertResponse(
      upsertedCount: json['upsertedCount'] as int?,
    );

Map<String, dynamic> _$$_UpsertResponseToJson(_$_UpsertResponse instance) =>
    <String, dynamic>{
      'upsertedCount': instance.upsertedCount,
    };

_$_Vector _$$_VectorFromJson(Map<String, dynamic> json) => _$_Vector(
      id: json['id'] as String,
      values: (json['values'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      sparseValues: json['sparseValues'] == null
          ? null
          : SparseVector.fromJson(json['sparseValues'] as Map<String, dynamic>),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_VectorToJson(_$_Vector instance) => <String, dynamic>{
      'id': instance.id,
      'values': instance.values,
      'sparseValues': instance.sparseValues,
      'metadata': instance.metadata,
    };

_$_VectorMatch _$$_VectorMatchFromJson(Map<String, dynamic> json) =>
    _$_VectorMatch(
      id: json['id'] as String,
      score: (json['score'] as num?)?.toDouble(),
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      sparseValues: json['sparseValues'] == null
          ? null
          : SparseVector.fromJson(json['sparseValues'] as Map<String, dynamic>),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_VectorMatchToJson(_$_VectorMatch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'score': instance.score,
      'values': instance.values,
      'sparseValues': instance.sparseValues,
      'metadata': instance.metadata,
    };

_$_SparseVector _$$_SparseVectorFromJson(Map<String, dynamic> json) =>
    _$_SparseVector(
      indices:
          (json['indices'] as List<dynamic>?)?.map((e) => e as int).toList(),
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$_SparseVectorToJson(_$_SparseVector instance) =>
    <String, dynamic>{
      'indices': instance.indices,
      'values': instance.values,
    };
