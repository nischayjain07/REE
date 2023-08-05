import 'package:json_annotation/json_annotation.dart';
import 'package:execution_engine/NSL_Integration/model/entity_cards/trans_entity_records.dart';


part 'result.g.dart';

@JsonSerializable(explicitToJson: true, nullable: true)
class Result {
  @JsonKey(nullable: true)
  String? name;
  @JsonKey(nullable: true)
  int? generalEntityID;
  @JsonKey(nullable: true)
  List<TransEntityRecords>? transEntityRecords;

  Result({this.name, this.generalEntityID, this.transEntityRecords});

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
