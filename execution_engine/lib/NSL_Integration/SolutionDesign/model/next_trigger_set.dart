import 'package:json_annotation/json_annotation.dart';

part 'next_trigger_set.g.dart';

@JsonSerializable(explicitToJson: true)
class NextTriggerSet {
  int? index;

  int? nextCUId;

  String? nextCUName;

  String? dsdNextCUId;

  NextTriggerSet({this.index, this.nextCUId, this.nextCUName, this.dsdNextCUId});

  factory NextTriggerSet.fromJson(Map<String, dynamic> json) => _$NextTriggerSetFromJson(json);

  Map<String, dynamic> toJson() => _$NextTriggerSetToJson(this);
}
