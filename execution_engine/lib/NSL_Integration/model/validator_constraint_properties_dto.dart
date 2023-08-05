import 'package:json_annotation/json_annotation.dart';

class ValidatorConstraintPropertiesDTO {
  String? name;
  String? info;
  String? dataType;
  bool? isMandatory;
  bool? useSourceDataType;
  bool? isCustomProperty;
  List<dynamic>? permittedValue;
  String? displayName;

  ValidatorConstraintPropertiesDTO({
    this.name,
    this.info,
    this.dataType,
    this.isMandatory,
    this.useSourceDataType,
    this.isCustomProperty,
    this.permittedValue,
    this.displayName,
  });

  ValidatorConstraintPropertiesDTO.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    info = json['info'] as String?;
    dataType = json['dataType'] as String?;
    isMandatory = json['isMandatory'] as bool?;
    useSourceDataType = json['useSourceDataType'] as bool?;
    isCustomProperty = json['isCustomProperty'] as bool?;
    permittedValue = json['permittedValue'] as List?;
    displayName = json['displayName'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['name'] = name;
    json['info'] = info;
    json['dataType'] = dataType;
    json['isMandatory'] = isMandatory;
    json['useSourceDataType'] = useSourceDataType;
    json['isCustomProperty'] = isCustomProperty;
    json['permittedValue'] = permittedValue;
    json['displayName'] = displayName;
    return json;
  }
}