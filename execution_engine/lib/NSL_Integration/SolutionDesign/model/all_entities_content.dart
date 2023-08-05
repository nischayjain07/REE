import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/nsl_attributes.dart';
import 'package:execution_engine/NSL_Integration/model/nsl_attributes.dart';

part 'all_entities_content.g.dart';

@JsonSerializable()
class AllEntityContent {
  String? name;

  String? displayName;

  String? version;

  String? dsdId;

  bool? isReserved;

  String? status;

  String? description;

  int? id;

  int? ownerId;

  int? masterId;

  List<NslAttributes>? nslAttributes;

  List<String>? cardIdList;

  AllEntityContent(
      {this.name,
      this.isReserved,
      this.status,
      this.id,
      this.dsdId,
      this.version,
      this.description,
      this.displayName,
      this.masterId,
      this.ownerId,
      this.nslAttributes,
      this.cardIdList});

  factory AllEntityContent.fromJson(Map<String, dynamic> json) => _$AllEntityContentFromJson(json);

  Map<String, dynamic> toJson() => _$AllEntityContentToJson(this);
}
