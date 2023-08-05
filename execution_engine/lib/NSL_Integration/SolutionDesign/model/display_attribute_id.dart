import 'package:execution_engine/NSL_Integration/SolutionDesign/model/attribute_type.dart';

class DisplayAttrId {
  String? dsdId;
  int? id;
  AttributeType? attributeType;
  List? constraints;
  bool? isReserved;
  bool? isInPotentiality;
  bool? triggerConditionalPotentiality;
  int? ownerId;
  bool? canDownload;
  bool? exportDesignSystem;
  String? name;
  String? displayName;
  String? source;
  String? status;
  bool? isNameUpdated;
  List? attachments;
  int? minAge;
  int? maxAge;
  bool? editable;
  String? approvalStatus;

  DisplayAttrId(
      {this.dsdId,
      this.id,
      this.attributeType,
      this.constraints,
      this.isReserved,
      this.isInPotentiality,
      this.triggerConditionalPotentiality,
      this.ownerId,
      this.canDownload,
      this.exportDesignSystem,
      this.name,
      this.displayName,
      this.source,
      this.status,
      this.isNameUpdated,
      this.attachments,
      this.minAge,
      this.maxAge,
      this.editable,
      this.approvalStatus});

  DisplayAttrId.fromJson(Map<String, dynamic> json) {
    dsdId = json['dsdId'];
    id = json['id'];
    attributeType = json['attributeType'] != null ? AttributeType.fromJson(json['attributeType']) : null;
    constraints = json['constraints'] as List;
    isReserved = json['isReserved'];
    isInPotentiality = json['isInPotentiality'];
    triggerConditionalPotentiality = json['triggerConditionalPotentiality'];
    ownerId = json['ownerId'];
    canDownload = json['canDownload'];
    exportDesignSystem = json['exportDesignSystem'];
    name = json['name'];
    displayName = json['displayName'];
    source = json['source'];
    status = json['status'];
    isNameUpdated = json['isNameUpdated'];
    attachments = json['attachments'] as List;
    minAge = json['minAge'];
    maxAge = json['maxAge'];
    editable = json['editable'];
    approvalStatus = json['approvalStatus'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['dsdId'] = dsdId;
    data['id'] = id;
    if (attributeType != null) {
      data['attributeType'] = attributeType?.toJson();
    }
    if (constraints != null) {
      data['constraints'] = constraints?.map((v) => v.toJson()).toList();
    }
    data['isReserved'] = isReserved;
    data['isInPotentiality'] = isInPotentiality;
    data['triggerConditionalPotentiality'] = triggerConditionalPotentiality;
    data['ownerId'] = ownerId;
    data['canDownload'] = canDownload;
    data['exportDesignSystem'] = exportDesignSystem;
    data['name'] = name;
    data['displayName'] = displayName;
    data['source'] = source;
    data['status'] = status;
    data['isNameUpdated'] = isNameUpdated;
    if (attachments != null) {
      data['attachments'] = attachments?.map((v) => v.toJson()).toList();
    }
    data['minAge'] = minAge;
    data['maxAge'] = maxAge;
    data['editable'] = editable;
    data['approvalStatus'] = approvalStatus;
    return data;
  }
}
