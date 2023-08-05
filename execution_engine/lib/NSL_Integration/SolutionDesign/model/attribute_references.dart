import 'package:execution_engine/NSL_Integration/SolutionDesign/model/entity_details_event_cu.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/nsl_attributes.dart';
import 'package:execution_engine/NSL_Integration/model/nsl_attributes.dart';

class AttributeReferences {
  String? targetAttributeId;
  String? targetAttributeName;
  String? refDisplayAttributeId;
  String? refDisplayAttributeName;
  String? refActualAttributeId;
  String? refActualAttributeName;
  String? referenceValueType;
  bool? isEnableTargetAttribute;
  EntityDetails? entityDetails;
  String? currentLayer;
  NslAttributes? displayAttrId;
  NslAttributes? actualAttId;

  AttributeReferences(
      {this.targetAttributeId,
      this.targetAttributeName,
      this.refDisplayAttributeId,
      this.refDisplayAttributeName,
      this.refActualAttributeId,
      this.refActualAttributeName,
      this.referenceValueType,
      this.isEnableTargetAttribute,
      this.entityDetails,
      this.currentLayer,
      this.displayAttrId,
      this.actualAttId});

  AttributeReferences.fromJson(Map<String, dynamic> json) {
    targetAttributeId = json['targetAttributeId'];
    targetAttributeName = json['targetAttributeName'];
    refDisplayAttributeId = json['refDisplayAttributeId'];
    refDisplayAttributeName = json['refDisplayAttributeName'];
    refActualAttributeId = json['refActualAttributeId'];
    refActualAttributeName = json['refActualAttributeName'];
    referenceValueType = json['referenceValueType'];
    isEnableTargetAttribute = json['isEnableTargetAttribute'];
    entityDetails = json['entityDetails'] != null ? EntityDetails.fromJson(json['entityDetails']) : null;
    currentLayer = json['currentLayer'];
    displayAttrId = json['displayAttrId'] != null ? NslAttributes.fromJson(json['displayAttrId']) : null;
    actualAttId = json['actualAttId'] != null ? NslAttributes.fromJson(json['actualAttId']) : null;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['targetAttributeId'] = targetAttributeId;
    data['targetAttributeName'] = targetAttributeName;
    data['refDisplayAttributeId'] = refDisplayAttributeId;
    data['refDisplayAttributeName'] = refDisplayAttributeName;
    data['refActualAttributeId'] = refActualAttributeId;
    data['refActualAttributeName'] = refActualAttributeName;
    data['referenceValueType'] = referenceValueType;
    data['isEnableTargetAttribute'] = isEnableTargetAttribute;
    if (entityDetails != null) {
      data['entityDetails'] = entityDetails?.toJson();
    }
    data['currentLayer'] = currentLayer;
    if (displayAttrId != null) {
      data['displayAttrId'] = displayAttrId?.toJson();
    }
    if (actualAttId != null) {
      data['actualAttId'] = actualAttId?.toJson();
    }
    return data;
  }
}
