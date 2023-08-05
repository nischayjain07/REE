// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ontology.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ontology _$OntologyFromJson(Map<String, dynamic> json) {
  return Ontology(
    id: json['id'] as String?,
    name: json['name'] as String?,
    displayName: json['displayName'] as String?,
    level: json['level'] as int?,
  );
}

Map<String, dynamic> _$OntologyToJson(Ontology instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'displayName': instance.displayName,
      'level': instance.level,
    };
