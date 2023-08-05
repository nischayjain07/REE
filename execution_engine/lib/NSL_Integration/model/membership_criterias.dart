import 'package:execution_engine/NSL_Integration/SolutionDesign/model/item_data.dart';
import 'package:execution_engine/NSL_Integration/model/nsl_attributes.dart';

class MembershipCriterias {
  String? referenceAttributeId;
  String? referenceAttributeContextualName;
  String? membershipContextualId;
  String? membershipContextualName;
  String? displayCondition;
  String? operator;
  NslAttributes? sourceAttr;
  ItemData? sourceentity;
  NslAttributes? targetAttr;
  String? currentConditionLayer;

  MembershipCriterias(
      {this.referenceAttributeId,
      this.referenceAttributeContextualName,
      this.membershipContextualId,
      this.membershipContextualName,
      this.displayCondition,
      this.operator,
      this.sourceAttr,
      this.sourceentity,
      this.targetAttr,
      this.currentConditionLayer});

  MembershipCriterias.fromJson(Map<String, dynamic> json) {
    referenceAttributeId = json['referenceAttributeId'];
    referenceAttributeContextualName = json['referenceAttributeContextualName'];
    membershipContextualId = json['membershipContextualId'];
    membershipContextualName = json['membershipContextualName'];
    displayCondition = json['displayCondition'];
    operator = json['operator'];
    currentConditionLayer = json['currentConditionLayer'];
    sourceAttr = json['sourceAttr'] != null ? NslAttributes.fromJson(json['sourceAttr']) : null;
    sourceentity = json['sourceentity'] != null ? ItemData.fromJson(json['sourceentity']) : null;
    targetAttr = json['targetAttr'] != null ? NslAttributes.fromJson(json['targetAttr']) : null;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = Map<String, dynamic>();
    data['referenceAttributeId'] = referenceAttributeId;
    data['referenceAttributeContextualName'] = referenceAttributeContextualName;
    data['membershipContextualId'] = membershipContextualId;
    data['membershipContextualName'] = membershipContextualName;
    data['displayCondition'] = displayCondition;
    data['operator'] = operator;
    data['currentConditionLayer'] = currentConditionLayer;
    if (sourceAttr != null) {
      data['sourceAttr'] = sourceAttr?.toJson();
    }
    if (sourceentity != null) {
      data['sourceentity'] = sourceentity?.toJson();
    }
    if (targetAttr != null) {
      data['targetAttr'] = targetAttr?.toJson();
    }
    return data;
  }
}
