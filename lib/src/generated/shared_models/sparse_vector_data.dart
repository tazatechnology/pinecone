import 'package:json_annotation/json_annotation.dart';

part 'sparse_vector_data.g.dart';

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
