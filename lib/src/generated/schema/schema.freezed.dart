// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Index _$IndexFromJson(Map<String, dynamic> json) {
  return _Index.fromJson(json);
}

/// @nodoc
mixin _$Index {
  /// Summary of index properties and metadata
  IndexDatabase get database => throw _privateConstructorUsedError;

  /// Information regarding status of the index.
  IndexStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndexCopyWith<Index> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndexCopyWith<$Res> {
  factory $IndexCopyWith(Index value, $Res Function(Index) then) =
      _$IndexCopyWithImpl<$Res, Index>;
  @useResult
  $Res call({IndexDatabase database, IndexStatus status});

  $IndexDatabaseCopyWith<$Res> get database;
  $IndexStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$IndexCopyWithImpl<$Res, $Val extends Index>
    implements $IndexCopyWith<$Res> {
  _$IndexCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? database = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      database: null == database
          ? _value.database
          : database // ignore: cast_nullable_to_non_nullable
              as IndexDatabase,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as IndexStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IndexDatabaseCopyWith<$Res> get database {
    return $IndexDatabaseCopyWith<$Res>(_value.database, (value) {
      return _then(_value.copyWith(database: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IndexStatusCopyWith<$Res> get status {
    return $IndexStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IndexImplCopyWith<$Res> implements $IndexCopyWith<$Res> {
  factory _$$IndexImplCopyWith(
          _$IndexImpl value, $Res Function(_$IndexImpl) then) =
      __$$IndexImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IndexDatabase database, IndexStatus status});

  @override
  $IndexDatabaseCopyWith<$Res> get database;
  @override
  $IndexStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$IndexImplCopyWithImpl<$Res>
    extends _$IndexCopyWithImpl<$Res, _$IndexImpl>
    implements _$$IndexImplCopyWith<$Res> {
  __$$IndexImplCopyWithImpl(
      _$IndexImpl _value, $Res Function(_$IndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? database = null,
    Object? status = null,
  }) {
    return _then(_$IndexImpl(
      database: null == database
          ? _value.database
          : database // ignore: cast_nullable_to_non_nullable
              as IndexDatabase,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as IndexStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndexImpl extends _Index {
  const _$IndexImpl({required this.database, required this.status}) : super._();

  factory _$IndexImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndexImplFromJson(json);

  /// Summary of index properties and metadata
  @override
  final IndexDatabase database;

  /// Information regarding status of the index.
  @override
  final IndexStatus status;

  @override
  String toString() {
    return 'Index(database: $database, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndexImpl &&
            (identical(other.database, database) ||
                other.database == database) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, database, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndexImplCopyWith<_$IndexImpl> get copyWith =>
      __$$IndexImplCopyWithImpl<_$IndexImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndexImplToJson(
      this,
    );
  }
}

abstract class _Index extends Index {
  const factory _Index(
      {required final IndexDatabase database,
      required final IndexStatus status}) = _$IndexImpl;
  const _Index._() : super._();

  factory _Index.fromJson(Map<String, dynamic> json) = _$IndexImpl.fromJson;

  @override

  /// Summary of index properties and metadata
  IndexDatabase get database;
  @override

  /// Information regarding status of the index.
  IndexStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$IndexImplCopyWith<_$IndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IndexDatabase _$IndexDatabaseFromJson(Map<String, dynamic> json) {
  return _IndexDatabase.fromJson(json);
}

/// @nodoc
mixin _$IndexDatabase {
  /// The name of the index.
  String get name => throw _privateConstructorUsedError;

  /// The vector similarity metric of the index.
  SearchMetric get metric => throw _privateConstructorUsedError;

  /// The dimension of the index.
  int get dimension => throw _privateConstructorUsedError;

  /// The number of index replicas.
  int get replicas => throw _privateConstructorUsedError;

  /// The number of index shards.
  int get shards => throw _privateConstructorUsedError;

  /// The number of index pods.
  int get pods => throw _privateConstructorUsedError;

  /// An enumeration of the available pod types.
  @JsonKey(
      name: 'pod_type', unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  PodType? get podType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndexDatabaseCopyWith<IndexDatabase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndexDatabaseCopyWith<$Res> {
  factory $IndexDatabaseCopyWith(
          IndexDatabase value, $Res Function(IndexDatabase) then) =
      _$IndexDatabaseCopyWithImpl<$Res, IndexDatabase>;
  @useResult
  $Res call(
      {String name,
      SearchMetric metric,
      int dimension,
      int replicas,
      int shards,
      int pods,
      @JsonKey(
          name: 'pod_type', unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      PodType? podType});
}

/// @nodoc
class _$IndexDatabaseCopyWithImpl<$Res, $Val extends IndexDatabase>
    implements $IndexDatabaseCopyWith<$Res> {
  _$IndexDatabaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? metric = null,
    Object? dimension = null,
    Object? replicas = null,
    Object? shards = null,
    Object? pods = null,
    Object? podType = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      metric: null == metric
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as SearchMetric,
      dimension: null == dimension
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as int,
      replicas: null == replicas
          ? _value.replicas
          : replicas // ignore: cast_nullable_to_non_nullable
              as int,
      shards: null == shards
          ? _value.shards
          : shards // ignore: cast_nullable_to_non_nullable
              as int,
      pods: null == pods
          ? _value.pods
          : pods // ignore: cast_nullable_to_non_nullable
              as int,
      podType: freezed == podType
          ? _value.podType
          : podType // ignore: cast_nullable_to_non_nullable
              as PodType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndexDatabaseImplCopyWith<$Res>
    implements $IndexDatabaseCopyWith<$Res> {
  factory _$$IndexDatabaseImplCopyWith(
          _$IndexDatabaseImpl value, $Res Function(_$IndexDatabaseImpl) then) =
      __$$IndexDatabaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      SearchMetric metric,
      int dimension,
      int replicas,
      int shards,
      int pods,
      @JsonKey(
          name: 'pod_type', unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      PodType? podType});
}

/// @nodoc
class __$$IndexDatabaseImplCopyWithImpl<$Res>
    extends _$IndexDatabaseCopyWithImpl<$Res, _$IndexDatabaseImpl>
    implements _$$IndexDatabaseImplCopyWith<$Res> {
  __$$IndexDatabaseImplCopyWithImpl(
      _$IndexDatabaseImpl _value, $Res Function(_$IndexDatabaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? metric = null,
    Object? dimension = null,
    Object? replicas = null,
    Object? shards = null,
    Object? pods = null,
    Object? podType = freezed,
  }) {
    return _then(_$IndexDatabaseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      metric: null == metric
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as SearchMetric,
      dimension: null == dimension
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as int,
      replicas: null == replicas
          ? _value.replicas
          : replicas // ignore: cast_nullable_to_non_nullable
              as int,
      shards: null == shards
          ? _value.shards
          : shards // ignore: cast_nullable_to_non_nullable
              as int,
      pods: null == pods
          ? _value.pods
          : pods // ignore: cast_nullable_to_non_nullable
              as int,
      podType: freezed == podType
          ? _value.podType
          : podType // ignore: cast_nullable_to_non_nullable
              as PodType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndexDatabaseImpl extends _IndexDatabase {
  const _$IndexDatabaseImpl(
      {required this.name,
      required this.metric,
      required this.dimension,
      required this.replicas,
      required this.shards,
      required this.pods,
      @JsonKey(
          name: 'pod_type', unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      this.podType})
      : super._();

  factory _$IndexDatabaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndexDatabaseImplFromJson(json);

  /// The name of the index.
  @override
  final String name;

  /// The vector similarity metric of the index.
  @override
  final SearchMetric metric;

  /// The dimension of the index.
  @override
  final int dimension;

  /// The number of index replicas.
  @override
  final int replicas;

  /// The number of index shards.
  @override
  final int shards;

  /// The number of index pods.
  @override
  final int pods;

  /// An enumeration of the available pod types.
  @override
  @JsonKey(
      name: 'pod_type', unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final PodType? podType;

  @override
  String toString() {
    return 'IndexDatabase(name: $name, metric: $metric, dimension: $dimension, replicas: $replicas, shards: $shards, pods: $pods, podType: $podType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndexDatabaseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.metric, metric) || other.metric == metric) &&
            (identical(other.dimension, dimension) ||
                other.dimension == dimension) &&
            (identical(other.replicas, replicas) ||
                other.replicas == replicas) &&
            (identical(other.shards, shards) || other.shards == shards) &&
            (identical(other.pods, pods) || other.pods == pods) &&
            (identical(other.podType, podType) || other.podType == podType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, metric, dimension, replicas, shards, pods, podType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndexDatabaseImplCopyWith<_$IndexDatabaseImpl> get copyWith =>
      __$$IndexDatabaseImplCopyWithImpl<_$IndexDatabaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndexDatabaseImplToJson(
      this,
    );
  }
}

abstract class _IndexDatabase extends IndexDatabase {
  const factory _IndexDatabase(
      {required final String name,
      required final SearchMetric metric,
      required final int dimension,
      required final int replicas,
      required final int shards,
      required final int pods,
      @JsonKey(
          name: 'pod_type', unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      final PodType? podType}) = _$IndexDatabaseImpl;
  const _IndexDatabase._() : super._();

  factory _IndexDatabase.fromJson(Map<String, dynamic> json) =
      _$IndexDatabaseImpl.fromJson;

  @override

  /// The name of the index.
  String get name;
  @override

  /// The vector similarity metric of the index.
  SearchMetric get metric;
  @override

  /// The dimension of the index.
  int get dimension;
  @override

  /// The number of index replicas.
  int get replicas;
  @override

  /// The number of index shards.
  int get shards;
  @override

  /// The number of index pods.
  int get pods;
  @override

  /// An enumeration of the available pod types.
  @JsonKey(
      name: 'pod_type', unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  PodType? get podType;
  @override
  @JsonKey(ignore: true)
  _$$IndexDatabaseImplCopyWith<_$IndexDatabaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IndexStatus _$IndexStatusFromJson(Map<String, dynamic> json) {
  return _IndexStatus.fromJson(json);
}

/// @nodoc
mixin _$IndexStatus {
  /// The host of the index.
  String get host => throw _privateConstructorUsedError;

  /// The port of this index.
  int get port => throw _privateConstructorUsedError;

  /// The current state of a index.
  @JsonKey(unknownEnumValue: IndexState.terminating)
  IndexState get state => throw _privateConstructorUsedError;

  /// Indicator of index readiness.
  bool get ready => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndexStatusCopyWith<IndexStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndexStatusCopyWith<$Res> {
  factory $IndexStatusCopyWith(
          IndexStatus value, $Res Function(IndexStatus) then) =
      _$IndexStatusCopyWithImpl<$Res, IndexStatus>;
  @useResult
  $Res call(
      {String host,
      int port,
      @JsonKey(unknownEnumValue: IndexState.terminating) IndexState state,
      bool ready});
}

/// @nodoc
class _$IndexStatusCopyWithImpl<$Res, $Val extends IndexStatus>
    implements $IndexStatusCopyWith<$Res> {
  _$IndexStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? port = null,
    Object? state = null,
    Object? ready = null,
  }) {
    return _then(_value.copyWith(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as IndexState,
      ready: null == ready
          ? _value.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndexStatusImplCopyWith<$Res>
    implements $IndexStatusCopyWith<$Res> {
  factory _$$IndexStatusImplCopyWith(
          _$IndexStatusImpl value, $Res Function(_$IndexStatusImpl) then) =
      __$$IndexStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String host,
      int port,
      @JsonKey(unknownEnumValue: IndexState.terminating) IndexState state,
      bool ready});
}

/// @nodoc
class __$$IndexStatusImplCopyWithImpl<$Res>
    extends _$IndexStatusCopyWithImpl<$Res, _$IndexStatusImpl>
    implements _$$IndexStatusImplCopyWith<$Res> {
  __$$IndexStatusImplCopyWithImpl(
      _$IndexStatusImpl _value, $Res Function(_$IndexStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? port = null,
    Object? state = null,
    Object? ready = null,
  }) {
    return _then(_$IndexStatusImpl(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as IndexState,
      ready: null == ready
          ? _value.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndexStatusImpl extends _IndexStatus {
  const _$IndexStatusImpl(
      {required this.host,
      required this.port,
      @JsonKey(unknownEnumValue: IndexState.terminating) required this.state,
      required this.ready})
      : super._();

  factory _$IndexStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndexStatusImplFromJson(json);

  /// The host of the index.
  @override
  final String host;

  /// The port of this index.
  @override
  final int port;

  /// The current state of a index.
  @override
  @JsonKey(unknownEnumValue: IndexState.terminating)
  final IndexState state;

  /// Indicator of index readiness.
  @override
  final bool ready;

  @override
  String toString() {
    return 'IndexStatus(host: $host, port: $port, state: $state, ready: $ready)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndexStatusImpl &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.ready, ready) || other.ready == ready));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, host, port, state, ready);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndexStatusImplCopyWith<_$IndexStatusImpl> get copyWith =>
      __$$IndexStatusImplCopyWithImpl<_$IndexStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndexStatusImplToJson(
      this,
    );
  }
}

abstract class _IndexStatus extends IndexStatus {
  const factory _IndexStatus(
      {required final String host,
      required final int port,
      @JsonKey(unknownEnumValue: IndexState.terminating)
      required final IndexState state,
      required final bool ready}) = _$IndexStatusImpl;
  const _IndexStatus._() : super._();

  factory _IndexStatus.fromJson(Map<String, dynamic> json) =
      _$IndexStatusImpl.fromJson;

  @override

  /// The host of the index.
  String get host;
  @override

  /// The port of this index.
  int get port;
  @override

  /// The current state of a index.
  @JsonKey(unknownEnumValue: IndexState.terminating)
  IndexState get state;
  @override

  /// Indicator of index readiness.
  bool get ready;
  @override
  @JsonKey(ignore: true)
  _$$IndexStatusImplCopyWith<_$IndexStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IndexStats _$IndexStatsFromJson(Map<String, dynamic> json) {
  return _IndexStats.fromJson(json);
}

/// @nodoc
mixin _$IndexStats {
  /// A mapping for each namespace in the index from the namespace name to a summary of its contents.
  Map<String, NamespaceStats>? get namespaces =>
      throw _privateConstructorUsedError;

  /// The dimension of the indexed vectors.
  int? get dimension => throw _privateConstructorUsedError;

  /// The fullness of the index, regardless of whether a metadata filter expression was passed. The granularity of this metric is 10%.
  double? get indexFullness => throw _privateConstructorUsedError;

  /// Indicator of index readiness.
  int? get totalVectorCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndexStatsCopyWith<IndexStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndexStatsCopyWith<$Res> {
  factory $IndexStatsCopyWith(
          IndexStats value, $Res Function(IndexStats) then) =
      _$IndexStatsCopyWithImpl<$Res, IndexStats>;
  @useResult
  $Res call(
      {Map<String, NamespaceStats>? namespaces,
      int? dimension,
      double? indexFullness,
      int? totalVectorCount});
}

/// @nodoc
class _$IndexStatsCopyWithImpl<$Res, $Val extends IndexStats>
    implements $IndexStatsCopyWith<$Res> {
  _$IndexStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? namespaces = freezed,
    Object? dimension = freezed,
    Object? indexFullness = freezed,
    Object? totalVectorCount = freezed,
  }) {
    return _then(_value.copyWith(
      namespaces: freezed == namespaces
          ? _value.namespaces
          : namespaces // ignore: cast_nullable_to_non_nullable
              as Map<String, NamespaceStats>?,
      dimension: freezed == dimension
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as int?,
      indexFullness: freezed == indexFullness
          ? _value.indexFullness
          : indexFullness // ignore: cast_nullable_to_non_nullable
              as double?,
      totalVectorCount: freezed == totalVectorCount
          ? _value.totalVectorCount
          : totalVectorCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndexStatsImplCopyWith<$Res>
    implements $IndexStatsCopyWith<$Res> {
  factory _$$IndexStatsImplCopyWith(
          _$IndexStatsImpl value, $Res Function(_$IndexStatsImpl) then) =
      __$$IndexStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, NamespaceStats>? namespaces,
      int? dimension,
      double? indexFullness,
      int? totalVectorCount});
}

/// @nodoc
class __$$IndexStatsImplCopyWithImpl<$Res>
    extends _$IndexStatsCopyWithImpl<$Res, _$IndexStatsImpl>
    implements _$$IndexStatsImplCopyWith<$Res> {
  __$$IndexStatsImplCopyWithImpl(
      _$IndexStatsImpl _value, $Res Function(_$IndexStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? namespaces = freezed,
    Object? dimension = freezed,
    Object? indexFullness = freezed,
    Object? totalVectorCount = freezed,
  }) {
    return _then(_$IndexStatsImpl(
      namespaces: freezed == namespaces
          ? _value._namespaces
          : namespaces // ignore: cast_nullable_to_non_nullable
              as Map<String, NamespaceStats>?,
      dimension: freezed == dimension
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as int?,
      indexFullness: freezed == indexFullness
          ? _value.indexFullness
          : indexFullness // ignore: cast_nullable_to_non_nullable
              as double?,
      totalVectorCount: freezed == totalVectorCount
          ? _value.totalVectorCount
          : totalVectorCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndexStatsImpl extends _IndexStats {
  const _$IndexStatsImpl(
      {final Map<String, NamespaceStats>? namespaces,
      this.dimension,
      this.indexFullness,
      this.totalVectorCount})
      : _namespaces = namespaces,
        super._();

  factory _$IndexStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndexStatsImplFromJson(json);

  /// A mapping for each namespace in the index from the namespace name to a summary of its contents.
  final Map<String, NamespaceStats>? _namespaces;

  /// A mapping for each namespace in the index from the namespace name to a summary of its contents.
  @override
  Map<String, NamespaceStats>? get namespaces {
    final value = _namespaces;
    if (value == null) return null;
    if (_namespaces is EqualUnmodifiableMapView) return _namespaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// The dimension of the indexed vectors.
  @override
  final int? dimension;

  /// The fullness of the index, regardless of whether a metadata filter expression was passed. The granularity of this metric is 10%.
  @override
  final double? indexFullness;

  /// Indicator of index readiness.
  @override
  final int? totalVectorCount;

  @override
  String toString() {
    return 'IndexStats(namespaces: $namespaces, dimension: $dimension, indexFullness: $indexFullness, totalVectorCount: $totalVectorCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndexStatsImpl &&
            const DeepCollectionEquality()
                .equals(other._namespaces, _namespaces) &&
            (identical(other.dimension, dimension) ||
                other.dimension == dimension) &&
            (identical(other.indexFullness, indexFullness) ||
                other.indexFullness == indexFullness) &&
            (identical(other.totalVectorCount, totalVectorCount) ||
                other.totalVectorCount == totalVectorCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_namespaces),
      dimension,
      indexFullness,
      totalVectorCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndexStatsImplCopyWith<_$IndexStatsImpl> get copyWith =>
      __$$IndexStatsImplCopyWithImpl<_$IndexStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndexStatsImplToJson(
      this,
    );
  }
}

abstract class _IndexStats extends IndexStats {
  const factory _IndexStats(
      {final Map<String, NamespaceStats>? namespaces,
      final int? dimension,
      final double? indexFullness,
      final int? totalVectorCount}) = _$IndexStatsImpl;
  const _IndexStats._() : super._();

  factory _IndexStats.fromJson(Map<String, dynamic> json) =
      _$IndexStatsImpl.fromJson;

  @override

  /// A mapping for each namespace in the index from the namespace name to a summary of its contents.
  Map<String, NamespaceStats>? get namespaces;
  @override

  /// The dimension of the indexed vectors.
  int? get dimension;
  @override

  /// The fullness of the index, regardless of whether a metadata filter expression was passed. The granularity of this metric is 10%.
  double? get indexFullness;
  @override

  /// Indicator of index readiness.
  int? get totalVectorCount;
  @override
  @JsonKey(ignore: true)
  _$$IndexStatsImplCopyWith<_$IndexStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NamespaceStats _$NamespaceStatsFromJson(Map<String, dynamic> json) {
  return _NamespaceStats.fromJson(json);
}

/// @nodoc
mixin _$NamespaceStats {
  /// The number of vectors stored in this namespace.
  int get vectorCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NamespaceStatsCopyWith<NamespaceStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NamespaceStatsCopyWith<$Res> {
  factory $NamespaceStatsCopyWith(
          NamespaceStats value, $Res Function(NamespaceStats) then) =
      _$NamespaceStatsCopyWithImpl<$Res, NamespaceStats>;
  @useResult
  $Res call({int vectorCount});
}

/// @nodoc
class _$NamespaceStatsCopyWithImpl<$Res, $Val extends NamespaceStats>
    implements $NamespaceStatsCopyWith<$Res> {
  _$NamespaceStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vectorCount = null,
  }) {
    return _then(_value.copyWith(
      vectorCount: null == vectorCount
          ? _value.vectorCount
          : vectorCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NamespaceStatsImplCopyWith<$Res>
    implements $NamespaceStatsCopyWith<$Res> {
  factory _$$NamespaceStatsImplCopyWith(_$NamespaceStatsImpl value,
          $Res Function(_$NamespaceStatsImpl) then) =
      __$$NamespaceStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int vectorCount});
}

/// @nodoc
class __$$NamespaceStatsImplCopyWithImpl<$Res>
    extends _$NamespaceStatsCopyWithImpl<$Res, _$NamespaceStatsImpl>
    implements _$$NamespaceStatsImplCopyWith<$Res> {
  __$$NamespaceStatsImplCopyWithImpl(
      _$NamespaceStatsImpl _value, $Res Function(_$NamespaceStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vectorCount = null,
  }) {
    return _then(_$NamespaceStatsImpl(
      vectorCount: null == vectorCount
          ? _value.vectorCount
          : vectorCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NamespaceStatsImpl extends _NamespaceStats {
  const _$NamespaceStatsImpl({required this.vectorCount}) : super._();

  factory _$NamespaceStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NamespaceStatsImplFromJson(json);

  /// The number of vectors stored in this namespace.
  @override
  final int vectorCount;

  @override
  String toString() {
    return 'NamespaceStats(vectorCount: $vectorCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NamespaceStatsImpl &&
            (identical(other.vectorCount, vectorCount) ||
                other.vectorCount == vectorCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, vectorCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NamespaceStatsImplCopyWith<_$NamespaceStatsImpl> get copyWith =>
      __$$NamespaceStatsImplCopyWithImpl<_$NamespaceStatsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NamespaceStatsImplToJson(
      this,
    );
  }
}

abstract class _NamespaceStats extends NamespaceStats {
  const factory _NamespaceStats({required final int vectorCount}) =
      _$NamespaceStatsImpl;
  const _NamespaceStats._() : super._();

  factory _NamespaceStats.fromJson(Map<String, dynamic> json) =
      _$NamespaceStatsImpl.fromJson;

  @override

  /// The number of vectors stored in this namespace.
  int get vectorCount;
  @override
  @JsonKey(ignore: true)
  _$$NamespaceStatsImplCopyWith<_$NamespaceStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Collection _$CollectionFromJson(Map<String, dynamic> json) {
  return _Collection.fromJson(json);
}

/// @nodoc
mixin _$Collection {
  /// The name of the collection.
  String get name => throw _privateConstructorUsedError;

  /// The current status of the collection
  CollectionStatus get status => throw _privateConstructorUsedError;

  /// The size of the collection in bytes.
  int? get size => throw _privateConstructorUsedError;

  /// The dimensionality of the collection.
  int get dimension => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionCopyWith<Collection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionCopyWith<$Res> {
  factory $CollectionCopyWith(
          Collection value, $Res Function(Collection) then) =
      _$CollectionCopyWithImpl<$Res, Collection>;
  @useResult
  $Res call({String name, CollectionStatus status, int? size, int dimension});
}

/// @nodoc
class _$CollectionCopyWithImpl<$Res, $Val extends Collection>
    implements $CollectionCopyWith<$Res> {
  _$CollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? status = null,
    Object? size = freezed,
    Object? dimension = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollectionStatus,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      dimension: null == dimension
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectionImplCopyWith<$Res>
    implements $CollectionCopyWith<$Res> {
  factory _$$CollectionImplCopyWith(
          _$CollectionImpl value, $Res Function(_$CollectionImpl) then) =
      __$$CollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, CollectionStatus status, int? size, int dimension});
}

/// @nodoc
class __$$CollectionImplCopyWithImpl<$Res>
    extends _$CollectionCopyWithImpl<$Res, _$CollectionImpl>
    implements _$$CollectionImplCopyWith<$Res> {
  __$$CollectionImplCopyWithImpl(
      _$CollectionImpl _value, $Res Function(_$CollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? status = null,
    Object? size = freezed,
    Object? dimension = null,
  }) {
    return _then(_$CollectionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollectionStatus,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      dimension: null == dimension
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectionImpl extends _Collection {
  const _$CollectionImpl(
      {required this.name,
      required this.status,
      this.size,
      required this.dimension})
      : super._();

  factory _$CollectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionImplFromJson(json);

  /// The name of the collection.
  @override
  final String name;

  /// The current status of the collection
  @override
  final CollectionStatus status;

  /// The size of the collection in bytes.
  @override
  final int? size;

  /// The dimensionality of the collection.
  @override
  final int dimension;

  @override
  String toString() {
    return 'Collection(name: $name, status: $status, size: $size, dimension: $dimension)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.dimension, dimension) ||
                other.dimension == dimension));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, status, size, dimension);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionImplCopyWith<_$CollectionImpl> get copyWith =>
      __$$CollectionImplCopyWithImpl<_$CollectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionImplToJson(
      this,
    );
  }
}

abstract class _Collection extends Collection {
  const factory _Collection(
      {required final String name,
      required final CollectionStatus status,
      final int? size,
      required final int dimension}) = _$CollectionImpl;
  const _Collection._() : super._();

  factory _Collection.fromJson(Map<String, dynamic> json) =
      _$CollectionImpl.fromJson;

  @override

  /// The name of the collection.
  String get name;
  @override

  /// The current status of the collection
  CollectionStatus get status;
  @override

  /// The size of the collection in bytes.
  int? get size;
  @override

  /// The dimensionality of the collection.
  int get dimension;
  @override
  @JsonKey(ignore: true)
  _$$CollectionImplCopyWith<_$CollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConfigureIndexRequest _$ConfigureIndexRequestFromJson(
    Map<String, dynamic> json) {
  return _ConfigureIndexRequest.fromJson(json);
}

/// @nodoc
mixin _$ConfigureIndexRequest {
  /// The desired number of replicas for the index.
  int get replicas => throw _privateConstructorUsedError;

  /// An enumeration of the available pod types.
  @JsonKey(
      name: 'pod_type', unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  PodType? get podType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigureIndexRequestCopyWith<ConfigureIndexRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigureIndexRequestCopyWith<$Res> {
  factory $ConfigureIndexRequestCopyWith(ConfigureIndexRequest value,
          $Res Function(ConfigureIndexRequest) then) =
      _$ConfigureIndexRequestCopyWithImpl<$Res, ConfigureIndexRequest>;
  @useResult
  $Res call(
      {int replicas,
      @JsonKey(
          name: 'pod_type', unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      PodType? podType});
}

/// @nodoc
class _$ConfigureIndexRequestCopyWithImpl<$Res,
        $Val extends ConfigureIndexRequest>
    implements $ConfigureIndexRequestCopyWith<$Res> {
  _$ConfigureIndexRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replicas = null,
    Object? podType = freezed,
  }) {
    return _then(_value.copyWith(
      replicas: null == replicas
          ? _value.replicas
          : replicas // ignore: cast_nullable_to_non_nullable
              as int,
      podType: freezed == podType
          ? _value.podType
          : podType // ignore: cast_nullable_to_non_nullable
              as PodType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfigureIndexRequestImplCopyWith<$Res>
    implements $ConfigureIndexRequestCopyWith<$Res> {
  factory _$$ConfigureIndexRequestImplCopyWith(
          _$ConfigureIndexRequestImpl value,
          $Res Function(_$ConfigureIndexRequestImpl) then) =
      __$$ConfigureIndexRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int replicas,
      @JsonKey(
          name: 'pod_type', unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      PodType? podType});
}

/// @nodoc
class __$$ConfigureIndexRequestImplCopyWithImpl<$Res>
    extends _$ConfigureIndexRequestCopyWithImpl<$Res,
        _$ConfigureIndexRequestImpl>
    implements _$$ConfigureIndexRequestImplCopyWith<$Res> {
  __$$ConfigureIndexRequestImplCopyWithImpl(_$ConfigureIndexRequestImpl _value,
      $Res Function(_$ConfigureIndexRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replicas = null,
    Object? podType = freezed,
  }) {
    return _then(_$ConfigureIndexRequestImpl(
      replicas: null == replicas
          ? _value.replicas
          : replicas // ignore: cast_nullable_to_non_nullable
              as int,
      podType: freezed == podType
          ? _value.podType
          : podType // ignore: cast_nullable_to_non_nullable
              as PodType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfigureIndexRequestImpl extends _ConfigureIndexRequest {
  const _$ConfigureIndexRequestImpl(
      {this.replicas = 1,
      @JsonKey(
          name: 'pod_type', unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      this.podType})
      : super._();

  factory _$ConfigureIndexRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfigureIndexRequestImplFromJson(json);

  /// The desired number of replicas for the index.
  @override
  @JsonKey()
  final int replicas;

  /// An enumeration of the available pod types.
  @override
  @JsonKey(
      name: 'pod_type', unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final PodType? podType;

  @override
  String toString() {
    return 'ConfigureIndexRequest(replicas: $replicas, podType: $podType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfigureIndexRequestImpl &&
            (identical(other.replicas, replicas) ||
                other.replicas == replicas) &&
            (identical(other.podType, podType) || other.podType == podType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, replicas, podType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfigureIndexRequestImplCopyWith<_$ConfigureIndexRequestImpl>
      get copyWith => __$$ConfigureIndexRequestImplCopyWithImpl<
          _$ConfigureIndexRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfigureIndexRequestImplToJson(
      this,
    );
  }
}

abstract class _ConfigureIndexRequest extends ConfigureIndexRequest {
  const factory _ConfigureIndexRequest(
      {final int replicas,
      @JsonKey(
          name: 'pod_type', unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      final PodType? podType}) = _$ConfigureIndexRequestImpl;
  const _ConfigureIndexRequest._() : super._();

  factory _ConfigureIndexRequest.fromJson(Map<String, dynamic> json) =
      _$ConfigureIndexRequestImpl.fromJson;

  @override

  /// The desired number of replicas for the index.
  int get replicas;
  @override

  /// An enumeration of the available pod types.
  @JsonKey(
      name: 'pod_type', unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  PodType? get podType;
  @override
  @JsonKey(ignore: true)
  _$$ConfigureIndexRequestImplCopyWith<_$ConfigureIndexRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateCollectionRequest _$CreateCollectionRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateCollectionRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateCollectionRequest {
  /// The name of the collection to create.
  String get name => throw _privateConstructorUsedError;

  /// The name of the index to use as the source of the collection.
  String get source => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateCollectionRequestCopyWith<CreateCollectionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCollectionRequestCopyWith<$Res> {
  factory $CreateCollectionRequestCopyWith(CreateCollectionRequest value,
          $Res Function(CreateCollectionRequest) then) =
      _$CreateCollectionRequestCopyWithImpl<$Res, CreateCollectionRequest>;
  @useResult
  $Res call({String name, String source});
}

/// @nodoc
class _$CreateCollectionRequestCopyWithImpl<$Res,
        $Val extends CreateCollectionRequest>
    implements $CreateCollectionRequestCopyWith<$Res> {
  _$CreateCollectionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? source = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateCollectionRequestImplCopyWith<$Res>
    implements $CreateCollectionRequestCopyWith<$Res> {
  factory _$$CreateCollectionRequestImplCopyWith(
          _$CreateCollectionRequestImpl value,
          $Res Function(_$CreateCollectionRequestImpl) then) =
      __$$CreateCollectionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String source});
}

/// @nodoc
class __$$CreateCollectionRequestImplCopyWithImpl<$Res>
    extends _$CreateCollectionRequestCopyWithImpl<$Res,
        _$CreateCollectionRequestImpl>
    implements _$$CreateCollectionRequestImplCopyWith<$Res> {
  __$$CreateCollectionRequestImplCopyWithImpl(
      _$CreateCollectionRequestImpl _value,
      $Res Function(_$CreateCollectionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? source = null,
  }) {
    return _then(_$CreateCollectionRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateCollectionRequestImpl extends _CreateCollectionRequest {
  const _$CreateCollectionRequestImpl(
      {required this.name, required this.source})
      : super._();

  factory _$CreateCollectionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateCollectionRequestImplFromJson(json);

  /// The name of the collection to create.
  @override
  final String name;

  /// The name of the index to use as the source of the collection.
  @override
  final String source;

  @override
  String toString() {
    return 'CreateCollectionRequest(name: $name, source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCollectionRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCollectionRequestImplCopyWith<_$CreateCollectionRequestImpl>
      get copyWith => __$$CreateCollectionRequestImplCopyWithImpl<
          _$CreateCollectionRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCollectionRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateCollectionRequest extends CreateCollectionRequest {
  const factory _CreateCollectionRequest(
      {required final String name,
      required final String source}) = _$CreateCollectionRequestImpl;
  const _CreateCollectionRequest._() : super._();

  factory _CreateCollectionRequest.fromJson(Map<String, dynamic> json) =
      _$CreateCollectionRequestImpl.fromJson;

  @override

  /// The name of the collection to create.
  String get name;
  @override

  /// The name of the index to use as the source of the collection.
  String get source;
  @override
  @JsonKey(ignore: true)
  _$$CreateCollectionRequestImplCopyWith<_$CreateCollectionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateIndexRequest _$CreateIndexRequestFromJson(Map<String, dynamic> json) {
  return _CreateIndexRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateIndexRequest {
  /// The name of the index to be created.
  String get name => throw _privateConstructorUsedError;

  /// The dimensions of the vectors to be inserted in the index.
  int get dimension => throw _privateConstructorUsedError;

  /// The vector similarity metric of the index.
  SearchMetric get metric => throw _privateConstructorUsedError;

  /// The number of pods for the index to use, including replicas.
  int get pods => throw _privateConstructorUsedError;

  /// The number of replicas. Replicas duplicate your index. They provide higher availability and throughput.
  int get replicas => throw _privateConstructorUsedError;

  /// An enumeration of the available pod types.
  @JsonKey(name: 'pod_type')
  PodType get podType => throw _privateConstructorUsedError;

  /// Configuration for the behavior of Pinecone's internal metadata index.
  @JsonKey(name: 'metadata_config')
  Map<String, dynamic>? get metadataConfig =>
      throw _privateConstructorUsedError;

  /// The name of the collection to create an index from.
  @JsonKey(name: 'source_collection')
  String? get sourceCollection => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateIndexRequestCopyWith<CreateIndexRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateIndexRequestCopyWith<$Res> {
  factory $CreateIndexRequestCopyWith(
          CreateIndexRequest value, $Res Function(CreateIndexRequest) then) =
      _$CreateIndexRequestCopyWithImpl<$Res, CreateIndexRequest>;
  @useResult
  $Res call(
      {String name,
      int dimension,
      SearchMetric metric,
      int pods,
      int replicas,
      @JsonKey(name: 'pod_type') PodType podType,
      @JsonKey(name: 'metadata_config') Map<String, dynamic>? metadataConfig,
      @JsonKey(name: 'source_collection') String? sourceCollection});
}

/// @nodoc
class _$CreateIndexRequestCopyWithImpl<$Res, $Val extends CreateIndexRequest>
    implements $CreateIndexRequestCopyWith<$Res> {
  _$CreateIndexRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dimension = null,
    Object? metric = null,
    Object? pods = null,
    Object? replicas = null,
    Object? podType = null,
    Object? metadataConfig = freezed,
    Object? sourceCollection = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dimension: null == dimension
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as int,
      metric: null == metric
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as SearchMetric,
      pods: null == pods
          ? _value.pods
          : pods // ignore: cast_nullable_to_non_nullable
              as int,
      replicas: null == replicas
          ? _value.replicas
          : replicas // ignore: cast_nullable_to_non_nullable
              as int,
      podType: null == podType
          ? _value.podType
          : podType // ignore: cast_nullable_to_non_nullable
              as PodType,
      metadataConfig: freezed == metadataConfig
          ? _value.metadataConfig
          : metadataConfig // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      sourceCollection: freezed == sourceCollection
          ? _value.sourceCollection
          : sourceCollection // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateIndexRequestImplCopyWith<$Res>
    implements $CreateIndexRequestCopyWith<$Res> {
  factory _$$CreateIndexRequestImplCopyWith(_$CreateIndexRequestImpl value,
          $Res Function(_$CreateIndexRequestImpl) then) =
      __$$CreateIndexRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int dimension,
      SearchMetric metric,
      int pods,
      int replicas,
      @JsonKey(name: 'pod_type') PodType podType,
      @JsonKey(name: 'metadata_config') Map<String, dynamic>? metadataConfig,
      @JsonKey(name: 'source_collection') String? sourceCollection});
}

/// @nodoc
class __$$CreateIndexRequestImplCopyWithImpl<$Res>
    extends _$CreateIndexRequestCopyWithImpl<$Res, _$CreateIndexRequestImpl>
    implements _$$CreateIndexRequestImplCopyWith<$Res> {
  __$$CreateIndexRequestImplCopyWithImpl(_$CreateIndexRequestImpl _value,
      $Res Function(_$CreateIndexRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dimension = null,
    Object? metric = null,
    Object? pods = null,
    Object? replicas = null,
    Object? podType = null,
    Object? metadataConfig = freezed,
    Object? sourceCollection = freezed,
  }) {
    return _then(_$CreateIndexRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dimension: null == dimension
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as int,
      metric: null == metric
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as SearchMetric,
      pods: null == pods
          ? _value.pods
          : pods // ignore: cast_nullable_to_non_nullable
              as int,
      replicas: null == replicas
          ? _value.replicas
          : replicas // ignore: cast_nullable_to_non_nullable
              as int,
      podType: null == podType
          ? _value.podType
          : podType // ignore: cast_nullable_to_non_nullable
              as PodType,
      metadataConfig: freezed == metadataConfig
          ? _value._metadataConfig
          : metadataConfig // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      sourceCollection: freezed == sourceCollection
          ? _value.sourceCollection
          : sourceCollection // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateIndexRequestImpl extends _CreateIndexRequest {
  const _$CreateIndexRequestImpl(
      {required this.name,
      required this.dimension,
      this.metric = SearchMetric.cosine,
      this.pods = 1,
      this.replicas = 1,
      @JsonKey(name: 'pod_type') this.podType = PodType.p1x1,
      @JsonKey(name: 'metadata_config')
      final Map<String, dynamic>? metadataConfig,
      @JsonKey(name: 'source_collection') this.sourceCollection})
      : _metadataConfig = metadataConfig,
        super._();

  factory _$CreateIndexRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateIndexRequestImplFromJson(json);

  /// The name of the index to be created.
  @override
  final String name;

  /// The dimensions of the vectors to be inserted in the index.
  @override
  final int dimension;

  /// The vector similarity metric of the index.
  @override
  @JsonKey()
  final SearchMetric metric;

  /// The number of pods for the index to use, including replicas.
  @override
  @JsonKey()
  final int pods;

  /// The number of replicas. Replicas duplicate your index. They provide higher availability and throughput.
  @override
  @JsonKey()
  final int replicas;

  /// An enumeration of the available pod types.
  @override
  @JsonKey(name: 'pod_type')
  final PodType podType;

  /// Configuration for the behavior of Pinecone's internal metadata index.
  final Map<String, dynamic>? _metadataConfig;

  /// Configuration for the behavior of Pinecone's internal metadata index.
  @override
  @JsonKey(name: 'metadata_config')
  Map<String, dynamic>? get metadataConfig {
    final value = _metadataConfig;
    if (value == null) return null;
    if (_metadataConfig is EqualUnmodifiableMapView) return _metadataConfig;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// The name of the collection to create an index from.
  @override
  @JsonKey(name: 'source_collection')
  final String? sourceCollection;

  @override
  String toString() {
    return 'CreateIndexRequest(name: $name, dimension: $dimension, metric: $metric, pods: $pods, replicas: $replicas, podType: $podType, metadataConfig: $metadataConfig, sourceCollection: $sourceCollection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateIndexRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dimension, dimension) ||
                other.dimension == dimension) &&
            (identical(other.metric, metric) || other.metric == metric) &&
            (identical(other.pods, pods) || other.pods == pods) &&
            (identical(other.replicas, replicas) ||
                other.replicas == replicas) &&
            (identical(other.podType, podType) || other.podType == podType) &&
            const DeepCollectionEquality()
                .equals(other._metadataConfig, _metadataConfig) &&
            (identical(other.sourceCollection, sourceCollection) ||
                other.sourceCollection == sourceCollection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      dimension,
      metric,
      pods,
      replicas,
      podType,
      const DeepCollectionEquality().hash(_metadataConfig),
      sourceCollection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateIndexRequestImplCopyWith<_$CreateIndexRequestImpl> get copyWith =>
      __$$CreateIndexRequestImplCopyWithImpl<_$CreateIndexRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateIndexRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateIndexRequest extends CreateIndexRequest {
  const factory _CreateIndexRequest(
          {required final String name,
          required final int dimension,
          final SearchMetric metric,
          final int pods,
          final int replicas,
          @JsonKey(name: 'pod_type') final PodType podType,
          @JsonKey(name: 'metadata_config')
          final Map<String, dynamic>? metadataConfig,
          @JsonKey(name: 'source_collection') final String? sourceCollection}) =
      _$CreateIndexRequestImpl;
  const _CreateIndexRequest._() : super._();

  factory _CreateIndexRequest.fromJson(Map<String, dynamic> json) =
      _$CreateIndexRequestImpl.fromJson;

  @override

  /// The name of the index to be created.
  String get name;
  @override

  /// The dimensions of the vectors to be inserted in the index.
  int get dimension;
  @override

  /// The vector similarity metric of the index.
  SearchMetric get metric;
  @override

  /// The number of pods for the index to use, including replicas.
  int get pods;
  @override

  /// The number of replicas. Replicas duplicate your index. They provide higher availability and throughput.
  int get replicas;
  @override

  /// An enumeration of the available pod types.
  @JsonKey(name: 'pod_type')
  PodType get podType;
  @override

  /// Configuration for the behavior of Pinecone's internal metadata index.
  @JsonKey(name: 'metadata_config')
  Map<String, dynamic>? get metadataConfig;
  @override

  /// The name of the collection to create an index from.
  @JsonKey(name: 'source_collection')
  String? get sourceCollection;
  @override
  @JsonKey(ignore: true)
  _$$CreateIndexRequestImplCopyWith<_$CreateIndexRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IndexStatsRequest _$IndexStatsRequestFromJson(Map<String, dynamic> json) {
  return _IndexStatsRequest.fromJson(json);
}

/// @nodoc
mixin _$IndexStatsRequest {
  /// If defined, the operation only returns statistics for vectors that satisfy the filter.
  Map<String, dynamic>? get filter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndexStatsRequestCopyWith<IndexStatsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndexStatsRequestCopyWith<$Res> {
  factory $IndexStatsRequestCopyWith(
          IndexStatsRequest value, $Res Function(IndexStatsRequest) then) =
      _$IndexStatsRequestCopyWithImpl<$Res, IndexStatsRequest>;
  @useResult
  $Res call({Map<String, dynamic>? filter});
}

/// @nodoc
class _$IndexStatsRequestCopyWithImpl<$Res, $Val extends IndexStatsRequest>
    implements $IndexStatsRequestCopyWith<$Res> {
  _$IndexStatsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_value.copyWith(
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndexStatsRequestImplCopyWith<$Res>
    implements $IndexStatsRequestCopyWith<$Res> {
  factory _$$IndexStatsRequestImplCopyWith(_$IndexStatsRequestImpl value,
          $Res Function(_$IndexStatsRequestImpl) then) =
      __$$IndexStatsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic>? filter});
}

/// @nodoc
class __$$IndexStatsRequestImplCopyWithImpl<$Res>
    extends _$IndexStatsRequestCopyWithImpl<$Res, _$IndexStatsRequestImpl>
    implements _$$IndexStatsRequestImplCopyWith<$Res> {
  __$$IndexStatsRequestImplCopyWithImpl(_$IndexStatsRequestImpl _value,
      $Res Function(_$IndexStatsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_$IndexStatsRequestImpl(
      filter: freezed == filter
          ? _value._filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndexStatsRequestImpl extends _IndexStatsRequest {
  const _$IndexStatsRequestImpl({final Map<String, dynamic>? filter})
      : _filter = filter,
        super._();

  factory _$IndexStatsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndexStatsRequestImplFromJson(json);

  /// If defined, the operation only returns statistics for vectors that satisfy the filter.
  final Map<String, dynamic>? _filter;

  /// If defined, the operation only returns statistics for vectors that satisfy the filter.
  @override
  Map<String, dynamic>? get filter {
    final value = _filter;
    if (value == null) return null;
    if (_filter is EqualUnmodifiableMapView) return _filter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'IndexStatsRequest(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndexStatsRequestImpl &&
            const DeepCollectionEquality().equals(other._filter, _filter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_filter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndexStatsRequestImplCopyWith<_$IndexStatsRequestImpl> get copyWith =>
      __$$IndexStatsRequestImplCopyWithImpl<_$IndexStatsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndexStatsRequestImplToJson(
      this,
    );
  }
}

abstract class _IndexStatsRequest extends IndexStatsRequest {
  const factory _IndexStatsRequest({final Map<String, dynamic>? filter}) =
      _$IndexStatsRequestImpl;
  const _IndexStatsRequest._() : super._();

  factory _IndexStatsRequest.fromJson(Map<String, dynamic> json) =
      _$IndexStatsRequestImpl.fromJson;

  @override

  /// If defined, the operation only returns statistics for vectors that satisfy the filter.
  Map<String, dynamic>? get filter;
  @override
  @JsonKey(ignore: true)
  _$$IndexStatsRequestImplCopyWith<_$IndexStatsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeleteRequest _$DeleteRequestFromJson(Map<String, dynamic> json) {
  return _DeleteRequest.fromJson(json);
}

/// @nodoc
mixin _$DeleteRequest {
  /// Vectors to delete, by id.
  List<String>? get ids => throw _privateConstructorUsedError;

  /// This indicates that all vectors in the index namespace should be deleted.
  bool? get deleteAll => throw _privateConstructorUsedError;

  /// The namespace to delete vectors from, if applicable.
  String? get namespace => throw _privateConstructorUsedError;

  /// If specified, the metadata filter here will be used to select the vectors to delete.
  Map<String, dynamic>? get filter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteRequestCopyWith<DeleteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteRequestCopyWith<$Res> {
  factory $DeleteRequestCopyWith(
          DeleteRequest value, $Res Function(DeleteRequest) then) =
      _$DeleteRequestCopyWithImpl<$Res, DeleteRequest>;
  @useResult
  $Res call(
      {List<String>? ids,
      bool? deleteAll,
      String? namespace,
      Map<String, dynamic>? filter});
}

/// @nodoc
class _$DeleteRequestCopyWithImpl<$Res, $Val extends DeleteRequest>
    implements $DeleteRequestCopyWith<$Res> {
  _$DeleteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = freezed,
    Object? deleteAll = freezed,
    Object? namespace = freezed,
    Object? filter = freezed,
  }) {
    return _then(_value.copyWith(
      ids: freezed == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      deleteAll: freezed == deleteAll
          ? _value.deleteAll
          : deleteAll // ignore: cast_nullable_to_non_nullable
              as bool?,
      namespace: freezed == namespace
          ? _value.namespace
          : namespace // ignore: cast_nullable_to_non_nullable
              as String?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteRequestImplCopyWith<$Res>
    implements $DeleteRequestCopyWith<$Res> {
  factory _$$DeleteRequestImplCopyWith(
          _$DeleteRequestImpl value, $Res Function(_$DeleteRequestImpl) then) =
      __$$DeleteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? ids,
      bool? deleteAll,
      String? namespace,
      Map<String, dynamic>? filter});
}

/// @nodoc
class __$$DeleteRequestImplCopyWithImpl<$Res>
    extends _$DeleteRequestCopyWithImpl<$Res, _$DeleteRequestImpl>
    implements _$$DeleteRequestImplCopyWith<$Res> {
  __$$DeleteRequestImplCopyWithImpl(
      _$DeleteRequestImpl _value, $Res Function(_$DeleteRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = freezed,
    Object? deleteAll = freezed,
    Object? namespace = freezed,
    Object? filter = freezed,
  }) {
    return _then(_$DeleteRequestImpl(
      ids: freezed == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      deleteAll: freezed == deleteAll
          ? _value.deleteAll
          : deleteAll // ignore: cast_nullable_to_non_nullable
              as bool?,
      namespace: freezed == namespace
          ? _value.namespace
          : namespace // ignore: cast_nullable_to_non_nullable
              as String?,
      filter: freezed == filter
          ? _value._filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteRequestImpl extends _DeleteRequest {
  const _$DeleteRequestImpl(
      {final List<String>? ids,
      this.deleteAll,
      this.namespace,
      final Map<String, dynamic>? filter})
      : _ids = ids,
        _filter = filter,
        super._();

  factory _$DeleteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteRequestImplFromJson(json);

  /// Vectors to delete, by id.
  final List<String>? _ids;

  /// Vectors to delete, by id.
  @override
  List<String>? get ids {
    final value = _ids;
    if (value == null) return null;
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// This indicates that all vectors in the index namespace should be deleted.
  @override
  final bool? deleteAll;

  /// The namespace to delete vectors from, if applicable.
  @override
  final String? namespace;

  /// If specified, the metadata filter here will be used to select the vectors to delete.
  final Map<String, dynamic>? _filter;

  /// If specified, the metadata filter here will be used to select the vectors to delete.
  @override
  Map<String, dynamic>? get filter {
    final value = _filter;
    if (value == null) return null;
    if (_filter is EqualUnmodifiableMapView) return _filter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'DeleteRequest(ids: $ids, deleteAll: $deleteAll, namespace: $namespace, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRequestImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids) &&
            (identical(other.deleteAll, deleteAll) ||
                other.deleteAll == deleteAll) &&
            (identical(other.namespace, namespace) ||
                other.namespace == namespace) &&
            const DeepCollectionEquality().equals(other._filter, _filter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_ids),
      deleteAll,
      namespace,
      const DeepCollectionEquality().hash(_filter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteRequestImplCopyWith<_$DeleteRequestImpl> get copyWith =>
      __$$DeleteRequestImplCopyWithImpl<_$DeleteRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteRequestImplToJson(
      this,
    );
  }
}

abstract class _DeleteRequest extends DeleteRequest {
  const factory _DeleteRequest(
      {final List<String>? ids,
      final bool? deleteAll,
      final String? namespace,
      final Map<String, dynamic>? filter}) = _$DeleteRequestImpl;
  const _DeleteRequest._() : super._();

  factory _DeleteRequest.fromJson(Map<String, dynamic> json) =
      _$DeleteRequestImpl.fromJson;

  @override

  /// Vectors to delete, by id.
  List<String>? get ids;
  @override

  /// This indicates that all vectors in the index namespace should be deleted.
  bool? get deleteAll;
  @override

  /// The namespace to delete vectors from, if applicable.
  String? get namespace;
  @override

  /// If specified, the metadata filter here will be used to select the vectors to delete.
  Map<String, dynamic>? get filter;
  @override
  @JsonKey(ignore: true)
  _$$DeleteRequestImplCopyWith<_$DeleteRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QueryRequest _$QueryRequestFromJson(Map<String, dynamic> json) {
  return _QueryRequest.fromJson(json);
}

/// @nodoc
mixin _$QueryRequest {
  /// The namespace to query.
  String? get namespace => throw _privateConstructorUsedError;

  /// The number of results to return for each query.
  int get topK => throw _privateConstructorUsedError;

  /// The filter to apply. You can use vector metadata to limit your search.
  Map<String, dynamic>? get filter => throw _privateConstructorUsedError;

  /// Indicates whether vector values are included in the response.
  bool get includeValues => throw _privateConstructorUsedError;

  /// Indicates whether metadata is included in the response as well as the ids.
  bool get includeMetadata => throw _privateConstructorUsedError;

  /// The query vector. This should be the same length as the dimension of the index being queried.
  List<double>? get vector => throw _privateConstructorUsedError;

  /// No Description
  SparseVector? get sparseVector => throw _privateConstructorUsedError;

  /// The unique ID of the vector to be used as a query vector.
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueryRequestCopyWith<QueryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryRequestCopyWith<$Res> {
  factory $QueryRequestCopyWith(
          QueryRequest value, $Res Function(QueryRequest) then) =
      _$QueryRequestCopyWithImpl<$Res, QueryRequest>;
  @useResult
  $Res call(
      {String? namespace,
      int topK,
      Map<String, dynamic>? filter,
      bool includeValues,
      bool includeMetadata,
      List<double>? vector,
      SparseVector? sparseVector,
      String? id});

  $SparseVectorCopyWith<$Res>? get sparseVector;
}

/// @nodoc
class _$QueryRequestCopyWithImpl<$Res, $Val extends QueryRequest>
    implements $QueryRequestCopyWith<$Res> {
  _$QueryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? namespace = freezed,
    Object? topK = null,
    Object? filter = freezed,
    Object? includeValues = null,
    Object? includeMetadata = null,
    Object? vector = freezed,
    Object? sparseVector = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      namespace: freezed == namespace
          ? _value.namespace
          : namespace // ignore: cast_nullable_to_non_nullable
              as String?,
      topK: null == topK
          ? _value.topK
          : topK // ignore: cast_nullable_to_non_nullable
              as int,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      includeValues: null == includeValues
          ? _value.includeValues
          : includeValues // ignore: cast_nullable_to_non_nullable
              as bool,
      includeMetadata: null == includeMetadata
          ? _value.includeMetadata
          : includeMetadata // ignore: cast_nullable_to_non_nullable
              as bool,
      vector: freezed == vector
          ? _value.vector
          : vector // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      sparseVector: freezed == sparseVector
          ? _value.sparseVector
          : sparseVector // ignore: cast_nullable_to_non_nullable
              as SparseVector?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SparseVectorCopyWith<$Res>? get sparseVector {
    if (_value.sparseVector == null) {
      return null;
    }

    return $SparseVectorCopyWith<$Res>(_value.sparseVector!, (value) {
      return _then(_value.copyWith(sparseVector: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QueryRequestImplCopyWith<$Res>
    implements $QueryRequestCopyWith<$Res> {
  factory _$$QueryRequestImplCopyWith(
          _$QueryRequestImpl value, $Res Function(_$QueryRequestImpl) then) =
      __$$QueryRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? namespace,
      int topK,
      Map<String, dynamic>? filter,
      bool includeValues,
      bool includeMetadata,
      List<double>? vector,
      SparseVector? sparseVector,
      String? id});

  @override
  $SparseVectorCopyWith<$Res>? get sparseVector;
}

/// @nodoc
class __$$QueryRequestImplCopyWithImpl<$Res>
    extends _$QueryRequestCopyWithImpl<$Res, _$QueryRequestImpl>
    implements _$$QueryRequestImplCopyWith<$Res> {
  __$$QueryRequestImplCopyWithImpl(
      _$QueryRequestImpl _value, $Res Function(_$QueryRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? namespace = freezed,
    Object? topK = null,
    Object? filter = freezed,
    Object? includeValues = null,
    Object? includeMetadata = null,
    Object? vector = freezed,
    Object? sparseVector = freezed,
    Object? id = freezed,
  }) {
    return _then(_$QueryRequestImpl(
      namespace: freezed == namespace
          ? _value.namespace
          : namespace // ignore: cast_nullable_to_non_nullable
              as String?,
      topK: null == topK
          ? _value.topK
          : topK // ignore: cast_nullable_to_non_nullable
              as int,
      filter: freezed == filter
          ? _value._filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      includeValues: null == includeValues
          ? _value.includeValues
          : includeValues // ignore: cast_nullable_to_non_nullable
              as bool,
      includeMetadata: null == includeMetadata
          ? _value.includeMetadata
          : includeMetadata // ignore: cast_nullable_to_non_nullable
              as bool,
      vector: freezed == vector
          ? _value._vector
          : vector // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      sparseVector: freezed == sparseVector
          ? _value.sparseVector
          : sparseVector // ignore: cast_nullable_to_non_nullable
              as SparseVector?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QueryRequestImpl extends _QueryRequest {
  const _$QueryRequestImpl(
      {this.namespace,
      this.topK = 10,
      final Map<String, dynamic>? filter,
      this.includeValues = false,
      this.includeMetadata = false,
      final List<double>? vector,
      this.sparseVector,
      this.id})
      : _filter = filter,
        _vector = vector,
        super._();

  factory _$QueryRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$QueryRequestImplFromJson(json);

  /// The namespace to query.
  @override
  final String? namespace;

  /// The number of results to return for each query.
  @override
  @JsonKey()
  final int topK;

  /// The filter to apply. You can use vector metadata to limit your search.
  final Map<String, dynamic>? _filter;

  /// The filter to apply. You can use vector metadata to limit your search.
  @override
  Map<String, dynamic>? get filter {
    final value = _filter;
    if (value == null) return null;
    if (_filter is EqualUnmodifiableMapView) return _filter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Indicates whether vector values are included in the response.
  @override
  @JsonKey()
  final bool includeValues;

  /// Indicates whether metadata is included in the response as well as the ids.
  @override
  @JsonKey()
  final bool includeMetadata;

  /// The query vector. This should be the same length as the dimension of the index being queried.
  final List<double>? _vector;

  /// The query vector. This should be the same length as the dimension of the index being queried.
  @override
  List<double>? get vector {
    final value = _vector;
    if (value == null) return null;
    if (_vector is EqualUnmodifiableListView) return _vector;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// No Description
  @override
  final SparseVector? sparseVector;

  /// The unique ID of the vector to be used as a query vector.
  @override
  final String? id;

  @override
  String toString() {
    return 'QueryRequest(namespace: $namespace, topK: $topK, filter: $filter, includeValues: $includeValues, includeMetadata: $includeMetadata, vector: $vector, sparseVector: $sparseVector, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryRequestImpl &&
            (identical(other.namespace, namespace) ||
                other.namespace == namespace) &&
            (identical(other.topK, topK) || other.topK == topK) &&
            const DeepCollectionEquality().equals(other._filter, _filter) &&
            (identical(other.includeValues, includeValues) ||
                other.includeValues == includeValues) &&
            (identical(other.includeMetadata, includeMetadata) ||
                other.includeMetadata == includeMetadata) &&
            const DeepCollectionEquality().equals(other._vector, _vector) &&
            (identical(other.sparseVector, sparseVector) ||
                other.sparseVector == sparseVector) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      namespace,
      topK,
      const DeepCollectionEquality().hash(_filter),
      includeValues,
      includeMetadata,
      const DeepCollectionEquality().hash(_vector),
      sparseVector,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryRequestImplCopyWith<_$QueryRequestImpl> get copyWith =>
      __$$QueryRequestImplCopyWithImpl<_$QueryRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QueryRequestImplToJson(
      this,
    );
  }
}

abstract class _QueryRequest extends QueryRequest {
  const factory _QueryRequest(
      {final String? namespace,
      final int topK,
      final Map<String, dynamic>? filter,
      final bool includeValues,
      final bool includeMetadata,
      final List<double>? vector,
      final SparseVector? sparseVector,
      final String? id}) = _$QueryRequestImpl;
  const _QueryRequest._() : super._();

  factory _QueryRequest.fromJson(Map<String, dynamic> json) =
      _$QueryRequestImpl.fromJson;

  @override

  /// The namespace to query.
  String? get namespace;
  @override

  /// The number of results to return for each query.
  int get topK;
  @override

  /// The filter to apply. You can use vector metadata to limit your search.
  Map<String, dynamic>? get filter;
  @override

  /// Indicates whether vector values are included in the response.
  bool get includeValues;
  @override

  /// Indicates whether metadata is included in the response as well as the ids.
  bool get includeMetadata;
  @override

  /// The query vector. This should be the same length as the dimension of the index being queried.
  List<double>? get vector;
  @override

  /// No Description
  SparseVector? get sparseVector;
  @override

  /// The unique ID of the vector to be used as a query vector.
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$QueryRequestImplCopyWith<_$QueryRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QueryResponse _$QueryResponseFromJson(Map<String, dynamic> json) {
  return _QueryResponse.fromJson(json);
}

/// @nodoc
mixin _$QueryResponse {
  /// The namespace to query.
  String get namespace => throw _privateConstructorUsedError;

  /// The matches for the vectors.
  List<VectorMatch> get matches => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueryResponseCopyWith<QueryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryResponseCopyWith<$Res> {
  factory $QueryResponseCopyWith(
          QueryResponse value, $Res Function(QueryResponse) then) =
      _$QueryResponseCopyWithImpl<$Res, QueryResponse>;
  @useResult
  $Res call({String namespace, List<VectorMatch> matches});
}

/// @nodoc
class _$QueryResponseCopyWithImpl<$Res, $Val extends QueryResponse>
    implements $QueryResponseCopyWith<$Res> {
  _$QueryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? namespace = null,
    Object? matches = null,
  }) {
    return _then(_value.copyWith(
      namespace: null == namespace
          ? _value.namespace
          : namespace // ignore: cast_nullable_to_non_nullable
              as String,
      matches: null == matches
          ? _value.matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<VectorMatch>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QueryResponseImplCopyWith<$Res>
    implements $QueryResponseCopyWith<$Res> {
  factory _$$QueryResponseImplCopyWith(
          _$QueryResponseImpl value, $Res Function(_$QueryResponseImpl) then) =
      __$$QueryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String namespace, List<VectorMatch> matches});
}

/// @nodoc
class __$$QueryResponseImplCopyWithImpl<$Res>
    extends _$QueryResponseCopyWithImpl<$Res, _$QueryResponseImpl>
    implements _$$QueryResponseImplCopyWith<$Res> {
  __$$QueryResponseImplCopyWithImpl(
      _$QueryResponseImpl _value, $Res Function(_$QueryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? namespace = null,
    Object? matches = null,
  }) {
    return _then(_$QueryResponseImpl(
      namespace: null == namespace
          ? _value.namespace
          : namespace // ignore: cast_nullable_to_non_nullable
              as String,
      matches: null == matches
          ? _value._matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<VectorMatch>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QueryResponseImpl extends _QueryResponse {
  const _$QueryResponseImpl(
      {required this.namespace, required final List<VectorMatch> matches})
      : _matches = matches,
        super._();

  factory _$QueryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$QueryResponseImplFromJson(json);

  /// The namespace to query.
  @override
  final String namespace;

  /// The matches for the vectors.
  final List<VectorMatch> _matches;

  /// The matches for the vectors.
  @override
  List<VectorMatch> get matches {
    if (_matches is EqualUnmodifiableListView) return _matches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matches);
  }

  @override
  String toString() {
    return 'QueryResponse(namespace: $namespace, matches: $matches)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryResponseImpl &&
            (identical(other.namespace, namespace) ||
                other.namespace == namespace) &&
            const DeepCollectionEquality().equals(other._matches, _matches));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, namespace, const DeepCollectionEquality().hash(_matches));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryResponseImplCopyWith<_$QueryResponseImpl> get copyWith =>
      __$$QueryResponseImplCopyWithImpl<_$QueryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QueryResponseImplToJson(
      this,
    );
  }
}

abstract class _QueryResponse extends QueryResponse {
  const factory _QueryResponse(
      {required final String namespace,
      required final List<VectorMatch> matches}) = _$QueryResponseImpl;
  const _QueryResponse._() : super._();

  factory _QueryResponse.fromJson(Map<String, dynamic> json) =
      _$QueryResponseImpl.fromJson;

  @override

  /// The namespace to query.
  String get namespace;
  @override

  /// The matches for the vectors.
  List<VectorMatch> get matches;
  @override
  @JsonKey(ignore: true)
  _$$QueryResponseImplCopyWith<_$QueryResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FetchResponse _$FetchResponseFromJson(Map<String, dynamic> json) {
  return _FetchResponse.fromJson(json);
}

/// @nodoc
mixin _$FetchResponse {
  /// The namespace to the vectors.
  String get namespace => throw _privateConstructorUsedError;

  /// The matches for the vectors.
  Map<String, Vector> get vectors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchResponseCopyWith<FetchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchResponseCopyWith<$Res> {
  factory $FetchResponseCopyWith(
          FetchResponse value, $Res Function(FetchResponse) then) =
      _$FetchResponseCopyWithImpl<$Res, FetchResponse>;
  @useResult
  $Res call({String namespace, Map<String, Vector> vectors});
}

/// @nodoc
class _$FetchResponseCopyWithImpl<$Res, $Val extends FetchResponse>
    implements $FetchResponseCopyWith<$Res> {
  _$FetchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? namespace = null,
    Object? vectors = null,
  }) {
    return _then(_value.copyWith(
      namespace: null == namespace
          ? _value.namespace
          : namespace // ignore: cast_nullable_to_non_nullable
              as String,
      vectors: null == vectors
          ? _value.vectors
          : vectors // ignore: cast_nullable_to_non_nullable
              as Map<String, Vector>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchResponseImplCopyWith<$Res>
    implements $FetchResponseCopyWith<$Res> {
  factory _$$FetchResponseImplCopyWith(
          _$FetchResponseImpl value, $Res Function(_$FetchResponseImpl) then) =
      __$$FetchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String namespace, Map<String, Vector> vectors});
}

/// @nodoc
class __$$FetchResponseImplCopyWithImpl<$Res>
    extends _$FetchResponseCopyWithImpl<$Res, _$FetchResponseImpl>
    implements _$$FetchResponseImplCopyWith<$Res> {
  __$$FetchResponseImplCopyWithImpl(
      _$FetchResponseImpl _value, $Res Function(_$FetchResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? namespace = null,
    Object? vectors = null,
  }) {
    return _then(_$FetchResponseImpl(
      namespace: null == namespace
          ? _value.namespace
          : namespace // ignore: cast_nullable_to_non_nullable
              as String,
      vectors: null == vectors
          ? _value._vectors
          : vectors // ignore: cast_nullable_to_non_nullable
              as Map<String, Vector>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchResponseImpl extends _FetchResponse {
  const _$FetchResponseImpl(
      {required this.namespace, required final Map<String, Vector> vectors})
      : _vectors = vectors,
        super._();

  factory _$FetchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchResponseImplFromJson(json);

  /// The namespace to the vectors.
  @override
  final String namespace;

  /// The matches for the vectors.
  final Map<String, Vector> _vectors;

  /// The matches for the vectors.
  @override
  Map<String, Vector> get vectors {
    if (_vectors is EqualUnmodifiableMapView) return _vectors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_vectors);
  }

  @override
  String toString() {
    return 'FetchResponse(namespace: $namespace, vectors: $vectors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchResponseImpl &&
            (identical(other.namespace, namespace) ||
                other.namespace == namespace) &&
            const DeepCollectionEquality().equals(other._vectors, _vectors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, namespace, const DeepCollectionEquality().hash(_vectors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchResponseImplCopyWith<_$FetchResponseImpl> get copyWith =>
      __$$FetchResponseImplCopyWithImpl<_$FetchResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchResponseImplToJson(
      this,
    );
  }
}

abstract class _FetchResponse extends FetchResponse {
  const factory _FetchResponse(
      {required final String namespace,
      required final Map<String, Vector> vectors}) = _$FetchResponseImpl;
  const _FetchResponse._() : super._();

  factory _FetchResponse.fromJson(Map<String, dynamic> json) =
      _$FetchResponseImpl.fromJson;

  @override

  /// The namespace to the vectors.
  String get namespace;
  @override

  /// The matches for the vectors.
  Map<String, Vector> get vectors;
  @override
  @JsonKey(ignore: true)
  _$$FetchResponseImplCopyWith<_$FetchResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateRequest _$UpdateRequestFromJson(Map<String, dynamic> json) {
  return _UpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateRequest {
  /// The unique identifier of the vector.
  String get id => throw _privateConstructorUsedError;

  /// The vector values
  List<double>? get values => throw _privateConstructorUsedError;

  /// No Description
  SparseVector? get sparseValues => throw _privateConstructorUsedError;

  /// Metadata to set for the vector.
  Map<String, dynamic>? get setMetadata => throw _privateConstructorUsedError;

  /// The namespace containing the vector to update.
  String? get namespace => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateRequestCopyWith<UpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateRequestCopyWith<$Res> {
  factory $UpdateRequestCopyWith(
          UpdateRequest value, $Res Function(UpdateRequest) then) =
      _$UpdateRequestCopyWithImpl<$Res, UpdateRequest>;
  @useResult
  $Res call(
      {String id,
      List<double>? values,
      SparseVector? sparseValues,
      Map<String, dynamic>? setMetadata,
      String? namespace});

  $SparseVectorCopyWith<$Res>? get sparseValues;
}

/// @nodoc
class _$UpdateRequestCopyWithImpl<$Res, $Val extends UpdateRequest>
    implements $UpdateRequestCopyWith<$Res> {
  _$UpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? values = freezed,
    Object? sparseValues = freezed,
    Object? setMetadata = freezed,
    Object? namespace = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      sparseValues: freezed == sparseValues
          ? _value.sparseValues
          : sparseValues // ignore: cast_nullable_to_non_nullable
              as SparseVector?,
      setMetadata: freezed == setMetadata
          ? _value.setMetadata
          : setMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      namespace: freezed == namespace
          ? _value.namespace
          : namespace // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SparseVectorCopyWith<$Res>? get sparseValues {
    if (_value.sparseValues == null) {
      return null;
    }

    return $SparseVectorCopyWith<$Res>(_value.sparseValues!, (value) {
      return _then(_value.copyWith(sparseValues: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateRequestImplCopyWith<$Res>
    implements $UpdateRequestCopyWith<$Res> {
  factory _$$UpdateRequestImplCopyWith(
          _$UpdateRequestImpl value, $Res Function(_$UpdateRequestImpl) then) =
      __$$UpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<double>? values,
      SparseVector? sparseValues,
      Map<String, dynamic>? setMetadata,
      String? namespace});

  @override
  $SparseVectorCopyWith<$Res>? get sparseValues;
}

/// @nodoc
class __$$UpdateRequestImplCopyWithImpl<$Res>
    extends _$UpdateRequestCopyWithImpl<$Res, _$UpdateRequestImpl>
    implements _$$UpdateRequestImplCopyWith<$Res> {
  __$$UpdateRequestImplCopyWithImpl(
      _$UpdateRequestImpl _value, $Res Function(_$UpdateRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? values = freezed,
    Object? sparseValues = freezed,
    Object? setMetadata = freezed,
    Object? namespace = freezed,
  }) {
    return _then(_$UpdateRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      values: freezed == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      sparseValues: freezed == sparseValues
          ? _value.sparseValues
          : sparseValues // ignore: cast_nullable_to_non_nullable
              as SparseVector?,
      setMetadata: freezed == setMetadata
          ? _value._setMetadata
          : setMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      namespace: freezed == namespace
          ? _value.namespace
          : namespace // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateRequestImpl extends _UpdateRequest {
  const _$UpdateRequestImpl(
      {required this.id,
      final List<double>? values,
      this.sparseValues,
      final Map<String, dynamic>? setMetadata,
      this.namespace})
      : _values = values,
        _setMetadata = setMetadata,
        super._();

  factory _$UpdateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateRequestImplFromJson(json);

  /// The unique identifier of the vector.
  @override
  final String id;

  /// The vector values
  final List<double>? _values;

  /// The vector values
  @override
  List<double>? get values {
    final value = _values;
    if (value == null) return null;
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// No Description
  @override
  final SparseVector? sparseValues;

  /// Metadata to set for the vector.
  final Map<String, dynamic>? _setMetadata;

  /// Metadata to set for the vector.
  @override
  Map<String, dynamic>? get setMetadata {
    final value = _setMetadata;
    if (value == null) return null;
    if (_setMetadata is EqualUnmodifiableMapView) return _setMetadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// The namespace containing the vector to update.
  @override
  final String? namespace;

  @override
  String toString() {
    return 'UpdateRequest(id: $id, values: $values, sparseValues: $sparseValues, setMetadata: $setMetadata, namespace: $namespace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.sparseValues, sparseValues) ||
                other.sparseValues == sparseValues) &&
            const DeepCollectionEquality()
                .equals(other._setMetadata, _setMetadata) &&
            (identical(other.namespace, namespace) ||
                other.namespace == namespace));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_values),
      sparseValues,
      const DeepCollectionEquality().hash(_setMetadata),
      namespace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRequestImplCopyWith<_$UpdateRequestImpl> get copyWith =>
      __$$UpdateRequestImplCopyWithImpl<_$UpdateRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateRequest extends UpdateRequest {
  const factory _UpdateRequest(
      {required final String id,
      final List<double>? values,
      final SparseVector? sparseValues,
      final Map<String, dynamic>? setMetadata,
      final String? namespace}) = _$UpdateRequestImpl;
  const _UpdateRequest._() : super._();

  factory _UpdateRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateRequestImpl.fromJson;

  @override

  /// The unique identifier of the vector.
  String get id;
  @override

  /// The vector values
  List<double>? get values;
  @override

  /// No Description
  SparseVector? get sparseValues;
  @override

  /// Metadata to set for the vector.
  Map<String, dynamic>? get setMetadata;
  @override

  /// The namespace containing the vector to update.
  String? get namespace;
  @override
  @JsonKey(ignore: true)
  _$$UpdateRequestImplCopyWith<_$UpdateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpsertRequest _$UpsertRequestFromJson(Map<String, dynamic> json) {
  return _UpsertRequest.fromJson(json);
}

/// @nodoc
mixin _$UpsertRequest {
  /// An array containing the vectors to upsert.
  List<Vector> get vectors => throw _privateConstructorUsedError;

  /// This is the namespace name where you upsert vectors.
  String? get namespace => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpsertRequestCopyWith<UpsertRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpsertRequestCopyWith<$Res> {
  factory $UpsertRequestCopyWith(
          UpsertRequest value, $Res Function(UpsertRequest) then) =
      _$UpsertRequestCopyWithImpl<$Res, UpsertRequest>;
  @useResult
  $Res call({List<Vector> vectors, String? namespace});
}

/// @nodoc
class _$UpsertRequestCopyWithImpl<$Res, $Val extends UpsertRequest>
    implements $UpsertRequestCopyWith<$Res> {
  _$UpsertRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vectors = null,
    Object? namespace = freezed,
  }) {
    return _then(_value.copyWith(
      vectors: null == vectors
          ? _value.vectors
          : vectors // ignore: cast_nullable_to_non_nullable
              as List<Vector>,
      namespace: freezed == namespace
          ? _value.namespace
          : namespace // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpsertRequestImplCopyWith<$Res>
    implements $UpsertRequestCopyWith<$Res> {
  factory _$$UpsertRequestImplCopyWith(
          _$UpsertRequestImpl value, $Res Function(_$UpsertRequestImpl) then) =
      __$$UpsertRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Vector> vectors, String? namespace});
}

/// @nodoc
class __$$UpsertRequestImplCopyWithImpl<$Res>
    extends _$UpsertRequestCopyWithImpl<$Res, _$UpsertRequestImpl>
    implements _$$UpsertRequestImplCopyWith<$Res> {
  __$$UpsertRequestImplCopyWithImpl(
      _$UpsertRequestImpl _value, $Res Function(_$UpsertRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vectors = null,
    Object? namespace = freezed,
  }) {
    return _then(_$UpsertRequestImpl(
      vectors: null == vectors
          ? _value._vectors
          : vectors // ignore: cast_nullable_to_non_nullable
              as List<Vector>,
      namespace: freezed == namespace
          ? _value.namespace
          : namespace // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpsertRequestImpl extends _UpsertRequest {
  const _$UpsertRequestImpl(
      {required final List<Vector> vectors, this.namespace})
      : _vectors = vectors,
        super._();

  factory _$UpsertRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpsertRequestImplFromJson(json);

  /// An array containing the vectors to upsert.
  final List<Vector> _vectors;

  /// An array containing the vectors to upsert.
  @override
  List<Vector> get vectors {
    if (_vectors is EqualUnmodifiableListView) return _vectors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vectors);
  }

  /// This is the namespace name where you upsert vectors.
  @override
  final String? namespace;

  @override
  String toString() {
    return 'UpsertRequest(vectors: $vectors, namespace: $namespace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpsertRequestImpl &&
            const DeepCollectionEquality().equals(other._vectors, _vectors) &&
            (identical(other.namespace, namespace) ||
                other.namespace == namespace));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_vectors), namespace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpsertRequestImplCopyWith<_$UpsertRequestImpl> get copyWith =>
      __$$UpsertRequestImplCopyWithImpl<_$UpsertRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpsertRequestImplToJson(
      this,
    );
  }
}

abstract class _UpsertRequest extends UpsertRequest {
  const factory _UpsertRequest(
      {required final List<Vector> vectors,
      final String? namespace}) = _$UpsertRequestImpl;
  const _UpsertRequest._() : super._();

  factory _UpsertRequest.fromJson(Map<String, dynamic> json) =
      _$UpsertRequestImpl.fromJson;

  @override

  /// An array containing the vectors to upsert.
  List<Vector> get vectors;
  @override

  /// This is the namespace name where you upsert vectors.
  String? get namespace;
  @override
  @JsonKey(ignore: true)
  _$$UpsertRequestImplCopyWith<_$UpsertRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpsertResponse _$UpsertResponseFromJson(Map<String, dynamic> json) {
  return _UpsertResponse.fromJson(json);
}

/// @nodoc
mixin _$UpsertResponse {
  /// The number of vectors upserted.
  int? get upsertedCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpsertResponseCopyWith<UpsertResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpsertResponseCopyWith<$Res> {
  factory $UpsertResponseCopyWith(
          UpsertResponse value, $Res Function(UpsertResponse) then) =
      _$UpsertResponseCopyWithImpl<$Res, UpsertResponse>;
  @useResult
  $Res call({int? upsertedCount});
}

/// @nodoc
class _$UpsertResponseCopyWithImpl<$Res, $Val extends UpsertResponse>
    implements $UpsertResponseCopyWith<$Res> {
  _$UpsertResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upsertedCount = freezed,
  }) {
    return _then(_value.copyWith(
      upsertedCount: freezed == upsertedCount
          ? _value.upsertedCount
          : upsertedCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpsertResponseImplCopyWith<$Res>
    implements $UpsertResponseCopyWith<$Res> {
  factory _$$UpsertResponseImplCopyWith(_$UpsertResponseImpl value,
          $Res Function(_$UpsertResponseImpl) then) =
      __$$UpsertResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? upsertedCount});
}

/// @nodoc
class __$$UpsertResponseImplCopyWithImpl<$Res>
    extends _$UpsertResponseCopyWithImpl<$Res, _$UpsertResponseImpl>
    implements _$$UpsertResponseImplCopyWith<$Res> {
  __$$UpsertResponseImplCopyWithImpl(
      _$UpsertResponseImpl _value, $Res Function(_$UpsertResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upsertedCount = freezed,
  }) {
    return _then(_$UpsertResponseImpl(
      upsertedCount: freezed == upsertedCount
          ? _value.upsertedCount
          : upsertedCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpsertResponseImpl extends _UpsertResponse {
  const _$UpsertResponseImpl({this.upsertedCount}) : super._();

  factory _$UpsertResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpsertResponseImplFromJson(json);

  /// The number of vectors upserted.
  @override
  final int? upsertedCount;

  @override
  String toString() {
    return 'UpsertResponse(upsertedCount: $upsertedCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpsertResponseImpl &&
            (identical(other.upsertedCount, upsertedCount) ||
                other.upsertedCount == upsertedCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, upsertedCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpsertResponseImplCopyWith<_$UpsertResponseImpl> get copyWith =>
      __$$UpsertResponseImplCopyWithImpl<_$UpsertResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpsertResponseImplToJson(
      this,
    );
  }
}

abstract class _UpsertResponse extends UpsertResponse {
  const factory _UpsertResponse({final int? upsertedCount}) =
      _$UpsertResponseImpl;
  const _UpsertResponse._() : super._();

  factory _UpsertResponse.fromJson(Map<String, dynamic> json) =
      _$UpsertResponseImpl.fromJson;

  @override

  /// The number of vectors upserted.
  int? get upsertedCount;
  @override
  @JsonKey(ignore: true)
  _$$UpsertResponseImplCopyWith<_$UpsertResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Vector _$VectorFromJson(Map<String, dynamic> json) {
  return _Vector.fromJson(json);
}

/// @nodoc
mixin _$Vector {
  /// The unique identifier of the vector.
  String get id => throw _privateConstructorUsedError;

  /// The vector values
  List<double> get values => throw _privateConstructorUsedError;

  /// No Description
  SparseVector? get sparseValues => throw _privateConstructorUsedError;

  /// Metadata associated with this vector.
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VectorCopyWith<Vector> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VectorCopyWith<$Res> {
  factory $VectorCopyWith(Vector value, $Res Function(Vector) then) =
      _$VectorCopyWithImpl<$Res, Vector>;
  @useResult
  $Res call(
      {String id,
      List<double> values,
      SparseVector? sparseValues,
      Map<String, dynamic>? metadata});

  $SparseVectorCopyWith<$Res>? get sparseValues;
}

/// @nodoc
class _$VectorCopyWithImpl<$Res, $Val extends Vector>
    implements $VectorCopyWith<$Res> {
  _$VectorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? values = null,
    Object? sparseValues = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<double>,
      sparseValues: freezed == sparseValues
          ? _value.sparseValues
          : sparseValues // ignore: cast_nullable_to_non_nullable
              as SparseVector?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SparseVectorCopyWith<$Res>? get sparseValues {
    if (_value.sparseValues == null) {
      return null;
    }

    return $SparseVectorCopyWith<$Res>(_value.sparseValues!, (value) {
      return _then(_value.copyWith(sparseValues: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VectorImplCopyWith<$Res> implements $VectorCopyWith<$Res> {
  factory _$$VectorImplCopyWith(
          _$VectorImpl value, $Res Function(_$VectorImpl) then) =
      __$$VectorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<double> values,
      SparseVector? sparseValues,
      Map<String, dynamic>? metadata});

  @override
  $SparseVectorCopyWith<$Res>? get sparseValues;
}

/// @nodoc
class __$$VectorImplCopyWithImpl<$Res>
    extends _$VectorCopyWithImpl<$Res, _$VectorImpl>
    implements _$$VectorImplCopyWith<$Res> {
  __$$VectorImplCopyWithImpl(
      _$VectorImpl _value, $Res Function(_$VectorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? values = null,
    Object? sparseValues = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$VectorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<double>,
      sparseValues: freezed == sparseValues
          ? _value.sparseValues
          : sparseValues // ignore: cast_nullable_to_non_nullable
              as SparseVector?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VectorImpl extends _Vector {
  const _$VectorImpl(
      {required this.id,
      required final List<double> values,
      this.sparseValues,
      final Map<String, dynamic>? metadata})
      : _values = values,
        _metadata = metadata,
        super._();

  factory _$VectorImpl.fromJson(Map<String, dynamic> json) =>
      _$$VectorImplFromJson(json);

  /// The unique identifier of the vector.
  @override
  final String id;

  /// The vector values
  final List<double> _values;

  /// The vector values
  @override
  List<double> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  /// No Description
  @override
  final SparseVector? sparseValues;

  /// Metadata associated with this vector.
  final Map<String, dynamic>? _metadata;

  /// Metadata associated with this vector.
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Vector(id: $id, values: $values, sparseValues: $sparseValues, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VectorImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.sparseValues, sparseValues) ||
                other.sparseValues == sparseValues) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_values),
      sparseValues,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VectorImplCopyWith<_$VectorImpl> get copyWith =>
      __$$VectorImplCopyWithImpl<_$VectorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VectorImplToJson(
      this,
    );
  }
}

abstract class _Vector extends Vector {
  const factory _Vector(
      {required final String id,
      required final List<double> values,
      final SparseVector? sparseValues,
      final Map<String, dynamic>? metadata}) = _$VectorImpl;
  const _Vector._() : super._();

  factory _Vector.fromJson(Map<String, dynamic> json) = _$VectorImpl.fromJson;

  @override

  /// The unique identifier of the vector.
  String get id;
  @override

  /// The vector values
  List<double> get values;
  @override

  /// No Description
  SparseVector? get sparseValues;
  @override

  /// Metadata associated with this vector.
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$VectorImplCopyWith<_$VectorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VectorMatch _$VectorMatchFromJson(Map<String, dynamic> json) {
  return _VectorMatch.fromJson(json);
}

/// @nodoc
mixin _$VectorMatch {
  /// The unique identifier of the vector.
  String get id => throw _privateConstructorUsedError;

  /// This is a measure of similarity between this vector and the query vector. The higher the score, the more they are similar.
  double? get score => throw _privateConstructorUsedError;

  /// This is the vector data, if it is requested.
  List<double>? get values => throw _privateConstructorUsedError;

  /// No Description
  SparseVector? get sparseValues => throw _privateConstructorUsedError;

  /// This is the metadata, if it is requested.
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VectorMatchCopyWith<VectorMatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VectorMatchCopyWith<$Res> {
  factory $VectorMatchCopyWith(
          VectorMatch value, $Res Function(VectorMatch) then) =
      _$VectorMatchCopyWithImpl<$Res, VectorMatch>;
  @useResult
  $Res call(
      {String id,
      double? score,
      List<double>? values,
      SparseVector? sparseValues,
      Map<String, dynamic>? metadata});

  $SparseVectorCopyWith<$Res>? get sparseValues;
}

/// @nodoc
class _$VectorMatchCopyWithImpl<$Res, $Val extends VectorMatch>
    implements $VectorMatchCopyWith<$Res> {
  _$VectorMatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? score = freezed,
    Object? values = freezed,
    Object? sparseValues = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      sparseValues: freezed == sparseValues
          ? _value.sparseValues
          : sparseValues // ignore: cast_nullable_to_non_nullable
              as SparseVector?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SparseVectorCopyWith<$Res>? get sparseValues {
    if (_value.sparseValues == null) {
      return null;
    }

    return $SparseVectorCopyWith<$Res>(_value.sparseValues!, (value) {
      return _then(_value.copyWith(sparseValues: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VectorMatchImplCopyWith<$Res>
    implements $VectorMatchCopyWith<$Res> {
  factory _$$VectorMatchImplCopyWith(
          _$VectorMatchImpl value, $Res Function(_$VectorMatchImpl) then) =
      __$$VectorMatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      double? score,
      List<double>? values,
      SparseVector? sparseValues,
      Map<String, dynamic>? metadata});

  @override
  $SparseVectorCopyWith<$Res>? get sparseValues;
}

/// @nodoc
class __$$VectorMatchImplCopyWithImpl<$Res>
    extends _$VectorMatchCopyWithImpl<$Res, _$VectorMatchImpl>
    implements _$$VectorMatchImplCopyWith<$Res> {
  __$$VectorMatchImplCopyWithImpl(
      _$VectorMatchImpl _value, $Res Function(_$VectorMatchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? score = freezed,
    Object? values = freezed,
    Object? sparseValues = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$VectorMatchImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      values: freezed == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      sparseValues: freezed == sparseValues
          ? _value.sparseValues
          : sparseValues // ignore: cast_nullable_to_non_nullable
              as SparseVector?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VectorMatchImpl extends _VectorMatch {
  const _$VectorMatchImpl(
      {required this.id,
      this.score,
      final List<double>? values,
      this.sparseValues,
      final Map<String, dynamic>? metadata})
      : _values = values,
        _metadata = metadata,
        super._();

  factory _$VectorMatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$VectorMatchImplFromJson(json);

  /// The unique identifier of the vector.
  @override
  final String id;

  /// This is a measure of similarity between this vector and the query vector. The higher the score, the more they are similar.
  @override
  final double? score;

  /// This is the vector data, if it is requested.
  final List<double>? _values;

  /// This is the vector data, if it is requested.
  @override
  List<double>? get values {
    final value = _values;
    if (value == null) return null;
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// No Description
  @override
  final SparseVector? sparseValues;

  /// This is the metadata, if it is requested.
  final Map<String, dynamic>? _metadata;

  /// This is the metadata, if it is requested.
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'VectorMatch(id: $id, score: $score, values: $values, sparseValues: $sparseValues, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VectorMatchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.sparseValues, sparseValues) ||
                other.sparseValues == sparseValues) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      score,
      const DeepCollectionEquality().hash(_values),
      sparseValues,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VectorMatchImplCopyWith<_$VectorMatchImpl> get copyWith =>
      __$$VectorMatchImplCopyWithImpl<_$VectorMatchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VectorMatchImplToJson(
      this,
    );
  }
}

abstract class _VectorMatch extends VectorMatch {
  const factory _VectorMatch(
      {required final String id,
      final double? score,
      final List<double>? values,
      final SparseVector? sparseValues,
      final Map<String, dynamic>? metadata}) = _$VectorMatchImpl;
  const _VectorMatch._() : super._();

  factory _VectorMatch.fromJson(Map<String, dynamic> json) =
      _$VectorMatchImpl.fromJson;

  @override

  /// The unique identifier of the vector.
  String get id;
  @override

  /// This is a measure of similarity between this vector and the query vector. The higher the score, the more they are similar.
  double? get score;
  @override

  /// This is the vector data, if it is requested.
  List<double>? get values;
  @override

  /// No Description
  SparseVector? get sparseValues;
  @override

  /// This is the metadata, if it is requested.
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$VectorMatchImplCopyWith<_$VectorMatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SparseVector _$SparseVectorFromJson(Map<String, dynamic> json) {
  return _SparseVector.fromJson(json);
}

/// @nodoc
mixin _$SparseVector {
  /// The indices of the sparse data.
  List<int>? get indices => throw _privateConstructorUsedError;

  /// The corresponding values of the sparse data, which must be the same length as the indices.
  List<double>? get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SparseVectorCopyWith<SparseVector> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SparseVectorCopyWith<$Res> {
  factory $SparseVectorCopyWith(
          SparseVector value, $Res Function(SparseVector) then) =
      _$SparseVectorCopyWithImpl<$Res, SparseVector>;
  @useResult
  $Res call({List<int>? indices, List<double>? values});
}

/// @nodoc
class _$SparseVectorCopyWithImpl<$Res, $Val extends SparseVector>
    implements $SparseVectorCopyWith<$Res> {
  _$SparseVectorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indices = freezed,
    Object? values = freezed,
  }) {
    return _then(_value.copyWith(
      indices: freezed == indices
          ? _value.indices
          : indices // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SparseVectorImplCopyWith<$Res>
    implements $SparseVectorCopyWith<$Res> {
  factory _$$SparseVectorImplCopyWith(
          _$SparseVectorImpl value, $Res Function(_$SparseVectorImpl) then) =
      __$$SparseVectorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int>? indices, List<double>? values});
}

/// @nodoc
class __$$SparseVectorImplCopyWithImpl<$Res>
    extends _$SparseVectorCopyWithImpl<$Res, _$SparseVectorImpl>
    implements _$$SparseVectorImplCopyWith<$Res> {
  __$$SparseVectorImplCopyWithImpl(
      _$SparseVectorImpl _value, $Res Function(_$SparseVectorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indices = freezed,
    Object? values = freezed,
  }) {
    return _then(_$SparseVectorImpl(
      indices: freezed == indices
          ? _value._indices
          : indices // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      values: freezed == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SparseVectorImpl extends _SparseVector {
  const _$SparseVectorImpl(
      {final List<int>? indices, final List<double>? values})
      : _indices = indices,
        _values = values,
        super._();

  factory _$SparseVectorImpl.fromJson(Map<String, dynamic> json) =>
      _$$SparseVectorImplFromJson(json);

  /// The indices of the sparse data.
  final List<int>? _indices;

  /// The indices of the sparse data.
  @override
  List<int>? get indices {
    final value = _indices;
    if (value == null) return null;
    if (_indices is EqualUnmodifiableListView) return _indices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// The corresponding values of the sparse data, which must be the same length as the indices.
  final List<double>? _values;

  /// The corresponding values of the sparse data, which must be the same length as the indices.
  @override
  List<double>? get values {
    final value = _values;
    if (value == null) return null;
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SparseVector(indices: $indices, values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SparseVectorImpl &&
            const DeepCollectionEquality().equals(other._indices, _indices) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_indices),
      const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SparseVectorImplCopyWith<_$SparseVectorImpl> get copyWith =>
      __$$SparseVectorImplCopyWithImpl<_$SparseVectorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SparseVectorImplToJson(
      this,
    );
  }
}

abstract class _SparseVector extends SparseVector {
  const factory _SparseVector(
      {final List<int>? indices,
      final List<double>? values}) = _$SparseVectorImpl;
  const _SparseVector._() : super._();

  factory _SparseVector.fromJson(Map<String, dynamic> json) =
      _$SparseVectorImpl.fromJson;

  @override

  /// The indices of the sparse data.
  List<int>? get indices;
  @override

  /// The corresponding values of the sparse data, which must be the same length as the indices.
  List<double>? get values;
  @override
  @JsonKey(ignore: true)
  _$$SparseVectorImplCopyWith<_$SparseVectorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
