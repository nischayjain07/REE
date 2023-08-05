class AttributeTypesWithDetails {
  String? name;
  String? info;
  List<Properties>? properties;
  List<Constraints>? constraints;
  List<dynamic>? functions;

  AttributeTypesWithDetails({
    this.name,
    this.info,
    this.properties,
    this.constraints,
    this.functions,
  });

  AttributeTypesWithDetails.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    info = json['info'] as String?;
    properties = (json['properties'] as List?)?.map((dynamic e) => Properties.fromJson(e as Map<String,dynamic>)).toList();
    constraints = (json['constraints'] as List?)?.map((dynamic e) => Constraints.fromJson(e as Map<String,dynamic>)).toList();
    functions = json['functions'] as List?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['name'] = name;
    json['info'] = info;
    json['properties'] = properties?.map((e) => e.toJson()).toList();
    json['constraints'] = constraints?.map((e) => e.toJson()).toList();
    json['functions'] = functions;
    return json;
  }
}


class Constraints {
  String? name;
  String? info;
  String? displayName;
  List<Properties>? properties;

  Constraints({
    this.name,
    this.info,
    this.displayName,
    this.properties,
  });

  Constraints.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    info = json['info'] as String?;
    displayName = json['displayName'] as String?;
    properties = (json['properties'] as List?)?.map((dynamic e) => Properties.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['name'] = name;
    json['info'] = info;
    json['displayName'] = displayName;
    json['properties'] = properties?.map((e) => e.toJson()).toList();
    return json;
  }
}

class Properties {
  String? name;
  String? info;
  String? dataType;
  bool? isMandatory;
  bool? useSourceDataType;
  bool? isCustomProperty;
  List<dynamic>? permittedValue;
  String? displayName;

  Properties({
    this.name,
    this.info,
    this.dataType,
    this.isMandatory,
    this.useSourceDataType,
    this.isCustomProperty,
    this.permittedValue,
    this.displayName,
  });

  Properties.fromJson(Map<String, dynamic> json) {
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