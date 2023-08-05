import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/item_data.dart';

part 'nestedCu_suggestions_request.g.dart';

@JsonSerializable(explicitToJson: true)
class NestedCuSuggestionRequest {
  String? book;
  String? chapter;
  List<String>? gsi;
  List<String>? cu;
  @JsonKey(defaultValue: [])
  List<ItemData>? entities;
  String? hostPortURL;
  bool? isNested;

  NestedCuSuggestionRequest(
      {this.book, this.chapter, this.gsi, this.cu, this.entities, this.hostPortURL, this.isNested});

  factory NestedCuSuggestionRequest.fromJson(Map<String, dynamic> json) => _$NestedCuSuggestionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NestedCuSuggestionRequestToJson(this);
}
