import 'package:json_annotation/json_annotation.dart';

part 'cu_suggestion_request_beforeCuAdd.g.dart';

@JsonSerializable(explicitToJson: true)
class CUSuggestionRequestBeforeCuAdd {
  String? gsi;
  int? activeCuIndex;
  String? hostPortURL;

  CUSuggestionRequestBeforeCuAdd({this.gsi, this.hostPortURL, this.activeCuIndex});

  factory CUSuggestionRequestBeforeCuAdd.fromJson(Map<String, dynamic> json) =>
      _$CUSuggestionRequestBeforeCuAddFromJson(json);

  Map<String, dynamic> toJson() => _$CUSuggestionRequestBeforeCuAddToJson(this);
}
