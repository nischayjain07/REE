import 'package:json_annotation/json_annotation.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/ontology.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/time_rights.dart';
import 'package:execution_engine/NSL_Integration/model/nsl_attributes.dart';
part 'item_data.g.dart';

@JsonSerializable(explicitToJson: true)
class ItemData {
  String? name;
  @JsonKey(defaultValue: 'DRAFT')
  String? status;

  List<NslAttributes>? nslAttributes;

  int? generalEntityID;
  @JsonKey(defaultValue: false)
  bool? isReserved;
  @JsonKey(defaultValue: false)
  bool? isMultiValue;

  int? id;

  int? ownerId;

  String? version;

  String? source;

  String? configuration;

  int? masterId;

  String? guid;

  String? dsdId;

  String? dsdStatus;

  int? updatedAt;

  String? component;

  String? displayName;

  bool? gsiLevelEntity;

  List<TimeRights>? designTimeRights;

  List<TimeRights>? txnTimeRights;

  List<String?>? keywords;

  List<Ontology?>? ontology;

  String? description;

  String? dsdMetadataId;

  ItemData(
      {this.name,
      this.status,
      this.nslAttributes,
      this.generalEntityID,
      this.isReserved,
      this.id,
      this.masterId,
      this.ownerId,
      this.dsdId,
      this.dsdStatus,
      this.isMultiValue,
      this.source,
      this.configuration,
      this.version,
      this.guid,
      this.displayName,
      this.updatedAt,
      this.component,
      this.gsiLevelEntity,
      this.designTimeRights,
      this.txnTimeRights,
      this.keywords,
      this.ontology,
      this.description,
      this.dsdMetadataId});

  factory ItemData.fromJson(Map<String, dynamic> json) => _$ItemDataFromJson(json);

  Map<String, dynamic> toJson() => _$ItemDataToJson(this);
}
