import 'package:json_annotation/json_annotation.dart';
import 'package:execution_engine/NSL_Integration/model/attribute_references.dart';
import 'package:execution_engine/NSL_Integration/model/membership_criterias.dart';

@JsonSerializable(explicitToJson: true)
class ReferenceEntityInfo {
  int? referenceEntityId;
  String? dsdReferenceEntityId;
  List<AttributeReferences>? attributeReferences;
  List<MembershipCriterias>? membershipCriterias;

  ReferenceEntityInfo(
      {this.referenceEntityId, this.dsdReferenceEntityId, this.attributeReferences, this.membershipCriterias});

  ReferenceEntityInfo.fromJson(Map<String, dynamic> json) {
    referenceEntityId = json['referenceEntityId'];
    dsdReferenceEntityId = json['dsdReferenceEntityId'];
    if (json['attributeReferences'] != null) {
      attributeReferences = <AttributeReferences>[];
      json['attributeReferences'].forEach((v) {
        attributeReferences?.add(AttributeReferences.fromJson(v));
      });
    }
    if (json['membershipCriterias'] != null) {
      membershipCriterias = <MembershipCriterias>[];
      json['membershipCriterias'].forEach((v) {
        membershipCriterias?.add(MembershipCriterias.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = Map<String, dynamic>();
    data['referenceEntityId'] = referenceEntityId;
    data['dsdReferenceEntityId'] = dsdReferenceEntityId;
    if (attributeReferences != null) {
      data['attributeReferences'] = attributeReferences?.map((v) => v.toJson()).toList();
    }
    if (membershipCriterias != null) {
      data['membershipCriterias'] = membershipCriterias?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
