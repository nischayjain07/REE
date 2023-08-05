import 'package:json_annotation/json_annotation.dart';

part 'suggestions.g.dart';

@JsonSerializable(explicitToJson: true)
class Suggestions {
  String? book;
  String? gsi;
  String? cu;
  String? tenant;
  String? hostPortURL;
  @JsonKey(defaultValue: [])
  List<String>? selectedRoleList;

  Suggestions({this.book, this.gsi, this.hostPortURL, this.selectedRoleList, this.cu, this.tenant});

  factory Suggestions.fromJson(Map<String, dynamic> json) => _$SuggestionsFromJson(json);

  Map<String, dynamic> toJson() => _$SuggestionsToJson(this);
}
