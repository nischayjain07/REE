// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_under_role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as int?,
    name: json['name'] as String?,
    email: json['email'] as String?,
    isEnabled: json['isEnabled'] as bool?,
    manager: User?.fromJson(json['manager'] as Map<String, dynamic>),
    roles: (json['rolesList'] as List?)?.map((e) => Agents?.fromJson(e as Map<String, dynamic>)).toList(),
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'roles': instance.roles?.map((e) => e.toJson()).toList(),
      'email': instance.email,
      'isEnabled': instance.isEnabled,
      'name': instance.name,
      'manager': instance.manager?.toJson(),
    };
