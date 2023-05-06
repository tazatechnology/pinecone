import 'package:json_annotation/json_annotation.dart';

part 'sparse_vector_data.g.dart';

/// Vector sparse data. Represented as a list of indices and a list of corresponded values, which must be the same length.
@JsonSerializable()
class SparseVectorData {
  const SparseVectorData({
    required this.indices,
    required this.values,
  });

  factory SparseVectorData.fromJson(Map<String, dynamic> json) =>
      _$SparseVectorDataFromJson(json);

  final List<int> indices;
  final List<double> values;

  Map<String, dynamic> toJson() => _$SparseVectorDataToJson(this);
}
