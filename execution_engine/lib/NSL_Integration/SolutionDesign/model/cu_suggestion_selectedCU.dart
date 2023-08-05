import 'package:json_annotation/json_annotation.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/next_trigger_set.dart';

part 'cu_suggestion_selectedCU.g.dart';

@JsonSerializable(explicitToJson: true)
class SelectedCU {
  String? name;
  int? index;
  @JsonKey(defaultValue: 'DLD')
  String? source;
  @JsonKey(defaultValue: [])
  List<NextTriggerSet>? nextTriggerSet;

  SelectedCU({this.name, this.index, this.source, this.nextTriggerSet});

  factory SelectedCU.fromJson(Map<String, dynamic> json) => _$SelectedCUFromJson(json);

  Map<String, dynamic> toJson() => _$SelectedCUToJson(this);
}
