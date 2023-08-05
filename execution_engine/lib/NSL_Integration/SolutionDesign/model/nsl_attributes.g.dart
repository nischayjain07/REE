// // GENERATED CODE - DO NOT MODIFY BY HAND

// part of 'nsl_attributes.dart';

// // **************************************************************************
// // JsonSerializableGenerator
// // **************************************************************************

// NslAttributes _$NslAttributesFromJson(Map<String, dynamic> json) {
//   return NslAttributes(
//     name: json['name'] as String?,
//     attributeDisplayName: json['displayName'] as String?,
//     dsdId: json['dsdId'] as String?,
//     defaultValue: json['defaultValue'] as String?,
//     source: json['source'] as String?,
//     status: json['status'] as String?,
//     nslAttributeMetaData: json['nslAttributeMetaData'] as Map<String, dynamic>,
//     attributeType: AttributeType.fromJson(json['attributeType'] as Map<String, dynamic>),
//     nslAttributeProperties: NslAttributeProperties.fromJson(json['nslAttributeProperties'] as Map<String, dynamic>),
//     values: (json['values'] as List?)?.map((e) => e as String)?.toList(),
//     constraints: json['constraints'] as List?,
//     attributeClassification: json['attributeClassification'] as String? ?? 'ESSENTIAL',
//     isReserved: json['isReserved'] as bool? ?? false,
//     generalEntity: ItemData.fromJson(json['generalEntity'] as Map<String, dynamic>),
//     id: json['id'] as int?,
//     isNameUpdated: json['isNameUpdated'] as bool?,
//     guid: json['guid'] as String?,
//     updatedAt: json['updatedAt'] as int?,
//     triggerConditionalPotentiality: json['triggerConditionalPotentiality'] as bool? ?? false,
//     isInPotentiality: json['isInPotentiality'] as bool? ?? false,
//     conditionalPotentiality: json['conditionalPotentiality'] as List ?? [],
//     configuration: json['configuration'] as String?,
//     designTimeRights: (json['designTimeRights'] as List?)?.map((e) =>   TimeRights.fromJson(e as Map<String, dynamic>))
//         ?.toList(),
//     txnTimeRights: (json['txnTimeRights'] as List?)?.map((e) =>   TimeRights.fromJson(e as Map<String, dynamic>))
//         ?.toList(),
//     memberShipName: json['memberShipName'] as String?,
//     memberShip: json['memberShip'] as String?,
//   );
// }

// Map<String, dynamic> _$NslAttributesToJson(NslAttributes instance) => <String, dynamic>{
//       'name': instance.name,
//       'displayName': instance.attributeDisplayName,
//       'defaultValue': instance.defaultValue,
//       'source': instance.source,
//       'status': instance.status,
//       'attributeType': instance.attributeType?.toJson(),
//       'nslAttributeProperties': instance.nslAttributeProperties?.toJson(),
//       'nslAttributeMetaData': instance.nslAttributeMetaData,
//       'values': instance.values,
//       'constraints': instance.constraints,
//       'attributeClassification': instance.attributeClassification,
//       'isReserved': instance.isReserved,
//       'generalEntity': instance.generalEntity?.toJson(),
//       'id': instance.id,
//       'dsdId': instance.dsdId,
//       'isNameUpdated': instance.isNameUpdated ?? true,
//       'guid': instance.guid,
//       'updatedAt': instance.updatedAt,
//       'triggerConditionalPotentiality': instance.triggerConditionalPotentiality,
//       'isInPotentiality': instance.isInPotentiality,
//       'conditionalPotentiality': instance.conditionalPotentiality,
//       'configuration': instance.configuration,
//       'designTimeRights': instance.designTimeRights?.map((e) => e?.toJson())?.toList(),
//       'txnTimeRights': instance.txnTimeRights?.map((e) => e?.toJson())?.toList(),
//       'memberShipName': instance.memberShipName,
//       'memberShip': instance.memberShip,
//     };
