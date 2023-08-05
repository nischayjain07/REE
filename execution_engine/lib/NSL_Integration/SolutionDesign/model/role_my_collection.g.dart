// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_my_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Agents _$AgentsFromJson(Map<String, dynamic> json) {
  return Agents(
    id: json['id'] as int?,
    name: json['name'] as String?,
    isAdmin: json['isAdmin'] as bool?,
    isEnabled: json['isEnabled'] as bool?,
    description: json['description'] as String?,
    users: (json['users'] as List?)?.map((e) =>  User?.fromJson(e as Map<String, dynamic>))?.toList(),
    roles: (json['users'] as List?)?.map((e) =>  Agents?.fromJson(e as Map<String, dynamic>))?.toList(),
    groups:
        (json['groups'] as List?)?.map((e) =>  Group?.fromJson(e as Map<String, dynamic>))?.toList(),
    parentRole:  Agents?.fromJson(json['parentRole'] as Map<String, dynamic>),
    parentOrgUnit:  Agents?.fromJson(json['parentOrgUnit'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AgentsToJson(Agents instance) => <String, dynamic>{
      'id': instance.id,
      'users': instance.users?.map((e) => e?.toJson())?.toList(),
      'roles': instance.roles?.map((e) => e?.toJson())?.toList(),
      'groups': instance.groups?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'isAdmin': instance.isAdmin,
      'isEnabled': instance.isEnabled,
      'description': instance.description,
      'parentRole': instance.parentRole?.toJson(),
      'parentOrgUnit': instance.parentOrgUnit?.toJson(),
    };
