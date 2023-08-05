import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/cu_suggestion_selectedCU.dart';

part 'cu_suggestion_request_afterCuAdd.g.dart';

@JsonSerializable(explicitToJson: true)
class CUSuggestionRequestAfterCuAdd {
  String? gsi;
  int? activeCuIndex;
  String? hostPortURL;
  @JsonKey(defaultValue: null)
  List<SelectedCU>? selectedCUList;

  CUSuggestionRequestAfterCuAdd({this.gsi, this.hostPortURL, this.selectedCUList, this.activeCuIndex});

  factory CUSuggestionRequestAfterCuAdd.fromJson(Map<String, dynamic> json) => _$CUSuggestionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CUSuggestionRequestToJson(this);
}
