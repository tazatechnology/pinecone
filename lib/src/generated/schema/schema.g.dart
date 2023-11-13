// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndexImpl _$$IndexImplFromJson(Map<String, dynamic> json) => _$IndexImpl(
      database:
          IndexDatabase.fromJson(json['database'] as Map<String, dynamic>),
      status: IndexStatus.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$IndexImplToJson(_$IndexImpl instance) =>
    <String, dynamic>{
      'database': instance.database,
      'status': instance.status,
    };

_$IndexDatabaseImpl _$$IndexDatabaseImplFromJson(Map<String, dynamic> json) =>
    _$IndexDatabaseImpl(
      name: json['name'] as String,
      metric: $enumDecode(_$SearchMetricEnumMap, json['metric']),
      dimension: json['dimension'] as int,
      replicas: json['replicas'] as int,
      shards: json['shards'] as int,
      pods: json['pods'] as int,
      podType: $enumDecodeNullable(_$PodTypeEnumMap, json['pod_type'],
          unknownValue: JsonKey.nullForUndefinedEnumValue),
    );

Map<String, dynamic> _$$IndexDatabaseImplToJson(_$IndexDatabaseImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'metric': _$SearchMetricEnumMap[instance.metric]!,
    'dimension': instance.dimension,
    'replicas': instance.replicas,
    'shards': instance.shards,
    'pods': instance.pods,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pod_type', _$PodTypeEnumMap[instance.podType]);
  return val;
}

const _$SearchMetricEnumMap = {
  SearchMetric.euclidean: 'euclidean',
  SearchMetric.cosine: 'cosine',
  SearchMetric.dotproduct: 'dotproduct',
};

const _$PodTypeEnumMap = {
  PodType.s1X1: 's1.x1',
  PodType.s1X2: 's1.x2',
  PodType.s1X4: 's1.x4',
  PodType.s1X8: 's1.x8',
  PodType.p1X1: 'p1.x1',
  PodType.p1X2: 'p1.x2',
  PodType.p1X4: 'p1.x4',
  PodType.p1X8: 'p1.x8',
  PodType.p2X1: 'p2.x1',
  PodType.p2X2: 'p2.x2',
  PodType.p2X4: 'p2.x4',
  PodType.p2X8: 'p2.x8',
};

_$IndexStatusImpl _$$IndexStatusImplFromJson(Map<String, dynamic> json) =>
    _$IndexStatusImpl(
      host: json['host'] as String,
      port: json['port'] as int,
      state: $enumDecode(_$IndexStateEnumMap, json['state'],
          unknownValue: IndexState.terminating),
      ready: json['ready'] as bool,
    );

Map<String, dynamic> _$$IndexStatusImplToJson(_$IndexStatusImpl instance) =>
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

_$IndexStatsImpl _$$IndexStatsImplFromJson(Map<String, dynamic> json) =>
    _$IndexStatsImpl(
      namespaces: (json['namespaces'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, NamespaceStats.fromJson(e as Map<String, dynamic>)),
      ),
      dimension: json['dimension'] as int?,
      indexFullness: (json['indexFullness'] as num?)?.toDouble(),
      totalVectorCount: json['totalVectorCount'] as int?,
    );

Map<String, dynamic> _$$IndexStatsImplToJson(_$IndexStatsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('namespaces', instance.namespaces);
  writeNotNull('dimension', instance.dimension);
  writeNotNull('indexFullness', instance.indexFullness);
  writeNotNull('totalVectorCount', instance.totalVectorCount);
  return val;
}

_$NamespaceStatsImpl _$$NamespaceStatsImplFromJson(Map<String, dynamic> json) =>
    _$NamespaceStatsImpl(
      vectorCount: json['vectorCount'] as int,
    );

Map<String, dynamic> _$$NamespaceStatsImplToJson(
        _$NamespaceStatsImpl instance) =>
    <String, dynamic>{
      'vectorCount': instance.vectorCount,
    };

_$CollectionImpl _$$CollectionImplFromJson(Map<String, dynamic> json) =>
    _$CollectionImpl(
      name: json['name'] as String,
      status: $enumDecode(_$CollectionStatusEnumMap, json['status']),
      size: json['size'] as int?,
      dimension: json['dimension'] as int,
    );

Map<String, dynamic> _$$CollectionImplToJson(_$CollectionImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'status': _$CollectionStatusEnumMap[instance.status]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('size', instance.size);
  val['dimension'] = instance.dimension;
  return val;
}

const _$CollectionStatusEnumMap = {
  CollectionStatus.initializing: 'Initializing',
  CollectionStatus.ready: 'Ready',
};

_$ConfigureIndexRequestImpl _$$ConfigureIndexRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfigureIndexRequestImpl(
      replicas: json['replicas'] as int? ?? 1,
      podType: $enumDecodeNullable(_$PodTypeEnumMap, json['pod_type'],
          unknownValue: JsonKey.nullForUndefinedEnumValue),
    );

Map<String, dynamic> _$$ConfigureIndexRequestImplToJson(
    _$ConfigureIndexRequestImpl instance) {
  final val = <String, dynamic>{
    'replicas': instance.replicas,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pod_type', _$PodTypeEnumMap[instance.podType]);
  return val;
}

_$CreateCollectionRequestImpl _$$CreateCollectionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateCollectionRequestImpl(
      name: json['name'] as String,
      source: json['source'] as String,
    );

Map<String, dynamic> _$$CreateCollectionRequestImplToJson(
        _$CreateCollectionRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'source': instance.source,
    };

_$CreateIndexRequestImpl _$$CreateIndexRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateIndexRequestImpl(
      name: json['name'] as String,
      dimension: json['dimension'] as int,
      metric: $enumDecodeNullable(_$SearchMetricEnumMap, json['metric']) ??
          SearchMetric.cosine,
      pods: json['pods'] as int? ?? 1,
      replicas: json['replicas'] as int? ?? 1,
      podType: $enumDecodeNullable(_$PodTypeEnumMap, json['pod_type']) ??
          PodType.p1X1,
      metadataConfig: json['metadata_config'] as Map<String, dynamic>?,
      sourceCollection: json['source_collection'] as String?,
    );

Map<String, dynamic> _$$CreateIndexRequestImplToJson(
    _$CreateIndexRequestImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'dimension': instance.dimension,
    'metric': _$SearchMetricEnumMap[instance.metric]!,
    'pods': instance.pods,
    'replicas': instance.replicas,
    'pod_type': _$PodTypeEnumMap[instance.podType]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata_config', instance.metadataConfig);
  writeNotNull('source_collection', instance.sourceCollection);
  return val;
}

_$IndexStatsRequestImpl _$$IndexStatsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$IndexStatsRequestImpl(
      filter: json['filter'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$IndexStatsRequestImplToJson(
    _$IndexStatsRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('filter', instance.filter);
  return val;
}

_$DeleteRequestImpl _$$DeleteRequestImplFromJson(Map<String, dynamic> json) =>
    _$DeleteRequestImpl(
      ids: (json['ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
      deleteAll: json['deleteAll'] as bool?,
      namespace: json['namespace'] as String?,
      filter: json['filter'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$DeleteRequestImplToJson(_$DeleteRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ids', instance.ids);
  writeNotNull('deleteAll', instance.deleteAll);
  writeNotNull('namespace', instance.namespace);
  writeNotNull('filter', instance.filter);
  return val;
}

_$QueryRequestImpl _$$QueryRequestImplFromJson(Map<String, dynamic> json) =>
    _$QueryRequestImpl(
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

Map<String, dynamic> _$$QueryRequestImplToJson(_$QueryRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('namespace', instance.namespace);
  val['topK'] = instance.topK;
  writeNotNull('filter', instance.filter);
  val['includeValues'] = instance.includeValues;
  val['includeMetadata'] = instance.includeMetadata;
  writeNotNull('vector', instance.vector);
  writeNotNull('sparseVector', instance.sparseVector);
  writeNotNull('id', instance.id);
  return val;
}

_$QueryResponseImpl _$$QueryResponseImplFromJson(Map<String, dynamic> json) =>
    _$QueryResponseImpl(
      namespace: json['namespace'] as String,
      matches: (json['matches'] as List<dynamic>)
          .map((e) => VectorMatch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QueryResponseImplToJson(_$QueryResponseImpl instance) =>
    <String, dynamic>{
      'namespace': instance.namespace,
      'matches': instance.matches,
    };

_$FetchResponseImpl _$$FetchResponseImplFromJson(Map<String, dynamic> json) =>
    _$FetchResponseImpl(
      namespace: json['namespace'] as String,
      vectors: (json['vectors'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Vector.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$FetchResponseImplToJson(_$FetchResponseImpl instance) =>
    <String, dynamic>{
      'namespace': instance.namespace,
      'vectors': instance.vectors,
    };

_$UpdateRequestImpl _$$UpdateRequestImplFromJson(Map<String, dynamic> json) =>
    _$UpdateRequestImpl(
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

Map<String, dynamic> _$$UpdateRequestImplToJson(_$UpdateRequestImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('values', instance.values);
  writeNotNull('sparseValues', instance.sparseValues);
  writeNotNull('setMetadata', instance.setMetadata);
  writeNotNull('namespace', instance.namespace);
  return val;
}

_$UpsertRequestImpl _$$UpsertRequestImplFromJson(Map<String, dynamic> json) =>
    _$UpsertRequestImpl(
      vectors: (json['vectors'] as List<dynamic>)
          .map((e) => Vector.fromJson(e as Map<String, dynamic>))
          .toList(),
      namespace: json['namespace'] as String?,
    );

Map<String, dynamic> _$$UpsertRequestImplToJson(_$UpsertRequestImpl instance) {
  final val = <String, dynamic>{
    'vectors': instance.vectors,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('namespace', instance.namespace);
  return val;
}

_$UpsertResponseImpl _$$UpsertResponseImplFromJson(Map<String, dynamic> json) =>
    _$UpsertResponseImpl(
      upsertedCount: json['upsertedCount'] as int?,
    );

Map<String, dynamic> _$$UpsertResponseImplToJson(
    _$UpsertResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('upsertedCount', instance.upsertedCount);
  return val;
}

_$VectorImpl _$$VectorImplFromJson(Map<String, dynamic> json) => _$VectorImpl(
      id: json['id'] as String,
      values: (json['values'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      sparseValues: json['sparseValues'] == null
          ? null
          : SparseVector.fromJson(json['sparseValues'] as Map<String, dynamic>),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$VectorImplToJson(_$VectorImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'values': instance.values,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sparseValues', instance.sparseValues);
  writeNotNull('metadata', instance.metadata);
  return val;
}

_$VectorMatchImpl _$$VectorMatchImplFromJson(Map<String, dynamic> json) =>
    _$VectorMatchImpl(
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

Map<String, dynamic> _$$VectorMatchImplToJson(_$VectorMatchImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('score', instance.score);
  writeNotNull('values', instance.values);
  writeNotNull('sparseValues', instance.sparseValues);
  writeNotNull('metadata', instance.metadata);
  return val;
}

_$SparseVectorImpl _$$SparseVectorImplFromJson(Map<String, dynamic> json) =>
    _$SparseVectorImpl(
      indices:
          (json['indices'] as List<dynamic>?)?.map((e) => e as int).toList(),
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$SparseVectorImplToJson(_$SparseVectorImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('indices', instance.indices);
  writeNotNull('values', instance.values);
  return val;
}
