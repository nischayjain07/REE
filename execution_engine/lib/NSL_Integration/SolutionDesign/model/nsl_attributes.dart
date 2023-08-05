// import 'package:json_annotation/json_annotation.dart';

// import 'package:execution_engine/NSL_Integration/SolutionDesign/model/attribute_type.dart';
// import 'package:execution_engine/NSL_Integration/SolutionDesign/model/item_data.dart';
// import 'package:execution_engine/NSL_Integration/SolutionDesign/model/nsl_attribute_properties.dart';
// import 'package:execution_engine/NSL_Integration/SolutionDesign/model/time_rights.dart';

// part 'nsl_attributes.g.dart';

// @JsonSerializable()
// class NslAttributes {
//   String? name;
//   String? attributeDisplayName;

//   String? defaultValue;

//   AttributeType? attributeType;
//   NslAttributeProperties? nslAttributeProperties;

//   List<String>? values;

//   @JsonKey(defaultValue: [])
//   List<dynamic>? constraints;

//   @JsonKey(defaultValue: "ESSENTIAL")
//   String? attributeClassification;

//   @JsonKey(defaultValue: false)
//   bool? isReserved;

//   @JsonKey(defaultValue: true)
//   bool? isNameUpdated;

//   ItemData generalEntity;

//   int? id;

//   String? guid;

//   String? status;

//   Map<String, dynamic>? nslAttributeMetaData;

//   String? source;

//   String? dsdId;

//   int? updatedAt;
//   @JsonKey(defaultValue: false)
//   bool? triggerConditionalPotentiality;
//   @JsonKey(defaultValue: false)
//   bool? isInPotentiality;
//   @JsonKey(defaultValue: [])
//   List? conditionalPotentiality;

//   String? configuration;
//   @JsonKey(nullable: true, defaultValue: [])
//   List<TimeRights>? designTimeRights;
//   @JsonKey(nullable: true, defaultValue: [])
//   List<TimeRights>? txnTimeRights;

//   String? memberShip;
//   String? memberShipName;

//   NslAttributes(
//       {this.name,
//       this.defaultValue,
//       this.attributeType,
//       this.nslAttributeProperties,
//       this.values,
//       this.constraints,
//       this.status,
//       this.source,
//       this.isNameUpdated,
//       this.nslAttributeMetaData,
//       this.attributeClassification,
//       this.dsdId,
//       this.isReserved,
//       this.generalEntity,
//       this.id,
//       this.guid,
//       this.updatedAt,
//       this.triggerConditionalPotentiality,
//       this.isInPotentiality,
//       this.conditionalPotentiality,
//       this.configuration,
//       this.txnTimeRights,
//       this.designTimeRights,
//       this.attributeDisplayName,
//       this.memberShip,
//       this.memberShipName});

//   factory NslAttributes.fromJson(Map<String, dynamic> json) => _$NslAttributesFromJson(json);

//   Map<String, dynamic> toJson() => _$NslAttributesToJson(this);
// }
