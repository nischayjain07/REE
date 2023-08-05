import 'package:json_annotation/json_annotation.dart';

part 'source_array.g.dart';

@JsonSerializable(explicitToJson: true)
class SourceArray {
  String? name;

  String? id;

  SourceArray({
    this.name,
    this.id,
  });

  factory SourceArray.fromJson(Map<String, dynamic> json) => _$SourceArrayFromJson(json);

  Map<String, dynamic> toJson() => _$SourceArrayToJson(this);
}
