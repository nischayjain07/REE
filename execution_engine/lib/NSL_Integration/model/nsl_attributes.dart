import 'package:json_annotation/json_annotation.dart';
import 'package:execution_engine/NSL_Integration/model/constraints_dto.dart';
import 'package:execution_engine/NSL_Integration/model/entity_model.dart';
import 'package:execution_engine/NSL_Integration/model/validator_constraints_dto.dart';

@JsonSerializable()
class NslAttributes {
  String? name;
  String? displayName;

  String? defaultValue;

  AttributeType? attributeType;
  NslAttributeProperties? nslAttributeProperties;

  List<String>? values;

  @JsonKey(defaultValue: [])
  List<ConstraintsDTO>? constraints;

  @JsonKey(defaultValue: "ESSENTIAL")
  String? attributeClassification;

  @JsonKey(defaultValue: false)
  bool? isReserved;

  @JsonKey(defaultValue: true)
  bool? isNameUpdated;

  int? id;

  String? guid;

  String? status;

  Map<String, dynamic>? nslAttributeMetaData;

  String? source;

  String? dsdId;

  int? updatedAt;
  @JsonKey(defaultValue: false)
  bool? triggerConditionalPotentiality;
  @JsonKey(defaultValue: false)
  bool? isInPotentiality;
  @JsonKey(defaultValue: [])
  List? conditionalPotentiality;

  String? configuration;
  @JsonKey(nullable: true, defaultValue: [])
  List<TimeRights>? designTimeRights;
  @JsonKey(nullable: true, defaultValue: [])
  List<TimeRights>? txnTimeRights;

  String? memberShip;
  String? memberShipName;
  List<ValidatorConstraintsDTO>? validatorList;
  bool? isOptional;
  bool? isNegative;

  String? type;
  String? dataType;
  bool? isMulti;
  String? uiElement;
  List<Options>? options;
  bool? isDisabled;
  bool? isHidden;
  bool? canDownload;
  bool? isTemplate;
  bool? isPlaceholder;

  NslAttributes(
      {this.name,
      this.defaultValue,
      this.attributeType,
      this.nslAttributeProperties,
      this.values,
      this.constraints,
      this.status,
      this.source,
      this.isNameUpdated,
      this.nslAttributeMetaData,
      this.attributeClassification,
      this.dsdId,
      this.isReserved,
      this.id,
      this.guid,
      this.updatedAt,
      this.triggerConditionalPotentiality,
      this.isInPotentiality,
      this.conditionalPotentiality,
      this.configuration,
      this.txnTimeRights,
      this.designTimeRights,
      this.displayName,
      this.memberShip,
      this.memberShipName,
      this.validatorList,
      this.isOptional,
      this.isNegative,
      this.type,
      this.dataType,
      this.isMulti,
      this.uiElement,
      this.options,
      this.isDisabled,
      this.isHidden,
      this.canDownload,
      this.isTemplate,
      this.isPlaceholder});

  factory NslAttributes.fromJson(Map<String, dynamic> json) => _$NslAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$NslAttributesToJson(this);
}

NslAttributes _$NslAttributesFromJson(Map<String, dynamic> json) {
  return NslAttributes(
      name: json['name'] as String?,
      displayName: json['displayName'] as String?,
      dsdId: json['dsdId'] as String?,
      defaultValue: json['defaultValue'] as String?,
      source: json['source'] as String?,
      status: json['status'] as String?,
      nslAttributeMetaData: json['nslAttributeMetaData'] as Map<String, dynamic>?,
      attributeType:
          json['attributeType'] == null ? null : AttributeType.fromJson(json['attributeType'] as Map<String, dynamic>),
      nslAttributeProperties: json['nslAttributeProperties'] == null
          ? null
          : NslAttributeProperties?.fromJson(json['nslAttributeProperties'] as Map<String, dynamic>),
      values: (json['values'] as List?)?.map((e) => e as String).toList(),
      constraints:
          (json['constraints'] as List?)?.map((e) => ConstraintsDTO.fromJson(e as Map<String, dynamic>)).toList(),
      attributeClassification: json['attributeClassification'] as String? ?? 'ESSENTIAL',
      isReserved: json['isReserved'] as bool? ?? false,
      id: json['id'] as int?,
      isNameUpdated: json['isNameUpdated'] as bool?,
      guid: json['guid'] as String?,
      updatedAt: json['updatedAt'] as int?,
      triggerConditionalPotentiality: json['triggerConditionalPotentiality'] as bool? ?? false,
      isInPotentiality: json['isInPotentiality'] as bool? ?? false,
      conditionalPotentiality: json['conditionalPotentiality'] as List? ?? [],
      configuration: json['configuration'] as String?,
      designTimeRights:
          (json['designTimeRights'] as List?)?.map((e) => TimeRights.fromJson(e as Map<String, dynamic?>)).toList(),
      txnTimeRights:
          (json['txnTimeRights'] as List?)?.map((e) => TimeRights.fromJson(e as Map<String, dynamic?>)).toList(),
      memberShipName: json['memberShipName'] as String?,
      memberShip: json['memberShip'] as String?,
      validatorList: (json['validatorList'] as List?)?.map((e) => ValidatorConstraintsDTO.fromJson(e)).toList(),
      isOptional: json['isOptional'] as bool?,
      isNegative: json['isNegative'] as bool?,
      type: json['type'] as String?,
      dataType: json['dataType'] as String?,
      isMulti: json['isMulti'] as bool?,
      uiElement: json['uiElement'] as String?,
      options: (json['options'] as List?)?.map((dynamic e) => Options.fromJson(e as Map<String,dynamic>)).toList(),
      isDisabled: json['isDisabled'] as bool?,
      isHidden: json['isHidden'] as bool?,
      canDownload: json['canDownload'] as bool?,
      isTemplate: json['isTemplate'] as bool?,
      isPlaceholder: json['isPlaceholder'] as bool?
);
}

Map<String, dynamic> _$NslAttributesToJson(NslAttributes instance) => <String, dynamic>{
      'name': instance.name,
      'displayName': instance.displayName,
      'defaultValue': instance.defaultValue,
      'source': instance.source,
      'status': instance.status,
      'attributeType': instance.attributeType?.toJson(),
      'nslAttributeProperties': instance.nslAttributeProperties?.toJson(),
      'nslAttributeMetaData': instance.nslAttributeMetaData,
      'values': instance.values,
      'constraints': instance.constraints,
      'attributeClassification': instance.attributeClassification,
      'isReserved': instance.isReserved,
      'id': instance.id,
      'dsdId': instance.dsdId,
      'isNameUpdated': instance.isNameUpdated ?? true,
      'guid': instance.guid,
      'updatedAt': instance.updatedAt,
      'triggerConditionalPotentiality': instance.triggerConditionalPotentiality,
      'isInPotentiality': instance.isInPotentiality,
      'conditionalPotentiality': instance.conditionalPotentiality,
      'configuration': instance.configuration,
      'designTimeRights': instance.designTimeRights?.map((e) => e.toJson()).toList(),
      'txnTimeRights': instance.txnTimeRights?.map((e) => e.toJson()).toList(),
      'memberShipName': instance.memberShipName,
      'memberShip': instance.memberShip,
      'validatorList': instance.validatorList?.map((e) => e.toJson()).toList(),
      'type': instance.type,
      'dataType': instance.dataType,
      'isMulti': instance.isMulti,
      'uiElement': instance.uiElement,
      'options': instance.options?.map((e) => e.toJson()).toList(),
      'isDisabled': instance.isDisabled,
      'isHidden': instance.isHidden,
      'canDownload': instance.canDownload,
      'isTemplate': instance.isTemplate,
      'isPlaceholder': instance.isPlaceholder
    };

class Options {
  String? actualValue;
  String? displayValue;
  int? count;

  Options({
    this.actualValue,
    this.displayValue,
    this.count,
  });

  Options.fromJson(Map<String, dynamic> json) {
    actualValue = json['actualValue'] as String?;
    displayValue = json['displayValue'] as String?;
    count = json['count'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['actualValue'] = actualValue;
    json['displayValue'] = displayValue;
    json['count'] = count;
    return json;
  }
}
