// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_role_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllRoleResponse _$AllRoleResponseFromJson(Map<String, dynamic> json) {
  return AllRoleResponse(
    totalRoles: json['totalRoles'] as int?,
    rolesList: (json['rolesList'] as List?)
        ?.map((e) => Agents.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    activeRoles: json['activeRoles'] as int?,
  );
}

Map<String, dynamic> _$AllRoleResponseToJson(AllRoleResponse instance) => <String, dynamic>{
      'totalRoles': instance.totalRoles,
      'rolesList': instance.rolesList?.map((e) => e?.toJson())?.toList(),
      'activeRoles': instance.activeRoles,
    };
