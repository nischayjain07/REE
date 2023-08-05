import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/source_array.dart';

part 'dcd.g.dart';

@JsonSerializable(explicitToJson: true)
class Dcd {
  @JsonKey(defaultValue: [])
  List<SourceArray>? sourceArray;
  @JsonKey(defaultValue: [])
  List? formulaArray;

  String? sourceContextualId;

  String? targetContextualId;

  String? targetContextualName;

  String? sourceContextualName;

  String? guid;

  int? id;

  int? ownerId;

  int? updatedAt;

  String? event;

  String? formulaName;

  String? formula;

  Dcd({
    this.sourceArray,
    this.formulaArray,
    this.sourceContextualId,
    this.targetContextualId,
    this.targetContextualName,
    this.id,
    this.guid,
    this.ownerId,
    this.updatedAt,
    this.sourceContextualName,
    this.event,
    this.formulaName,
    this.formula,
  });

  factory Dcd.fromJson(Map<String, dynamic> json) => _$DcdFromJson(json);

  Map<String, dynamic> toJson() => _$DcdToJson(this);
}
