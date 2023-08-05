import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/item.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/nsl_attributes.dart';
import 'package:execution_engine/NSL_Integration/model/nsl_attributes.dart';

part 'participating_items.g.dart';

@JsonSerializable(explicitToJson: true)
class ParticipatingItem {
  bool? isMultiValue;

  Item? item;
  @JsonKey(defaultValue: [])
  List? membershipCriteriaList;
  @JsonKey(defaultValue: [])
  List? conditionalPotentiality;
  @JsonKey(defaultValue: false)
  bool? isInPotentiality;
  @JsonKey(defaultValue: false)
  bool? triggerConditionalPotentiality;

  int? id;

  String? guid;

  String? name;

  String? displayName;

  String? status;
  @JsonKey(name: 'TYPE')
  String? type;

  String? source;

  bool? isReserved;

  List<NslAttributes>? nslAttributes;
  @JsonKey(nullable: true)
  Map<String, dynamic>? changeDriverMetaData;

  ParticipatingItem(
      {this.isMultiValue,
      this.item,
      this.membershipCriteriaList,
      this.conditionalPotentiality,
      this.isInPotentiality,
      this.triggerConditionalPotentiality,
      this.id,
      this.guid,
      this.name,
      this.displayName,
      this.isReserved,
      this.nslAttributes,
      this.source,
      this.status,
      this.type,
      this.changeDriverMetaData});

  factory ParticipatingItem.fromJson(Map<String, dynamic> json) => _$ParticipatingItemFromJson(json);

  Map<String, dynamic> toJson() => _$ParticipatingItemToJson(this);
}
