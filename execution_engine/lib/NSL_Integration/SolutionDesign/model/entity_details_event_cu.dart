import 'package:execution_engine/NSL_Integration/SolutionDesign/model/object_name.dart';

class EntityDetails {
  ObjectName? entity;
  ObjectName? attribute;

  EntityDetails({this.entity, this.attribute});

  EntityDetails.fromJson(Map<String, dynamic> json) {
    entity = ObjectName?.fromJson(json['entity']) ;
    attribute = ObjectName.fromJson(json['attribute']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = Map<String, dynamic>();
    if (entity != null) {
      data['entity'] = entity?.toJson();
    }
    if (attribute != null) {
      data['attribute'] = attribute?.toJson();
    }
    return data;
  }
}
