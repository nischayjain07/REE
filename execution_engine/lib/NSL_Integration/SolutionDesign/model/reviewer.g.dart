// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviewer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reviewer _$ReviewerFromJson(Map<String, dynamic> json) {
  return Reviewer(
    name: json['name'] as String?,
    email: json['email'] as String?,
    createdAt: json['createdAt'] as int?,
    guid: json['guid'] as dynamic?,
    id: json['id'] as int?,
    isEnabled: json['isEnabled'] as bool?,
    ownerId: json['ownerId'] as int?,
    updatedAt: json['updatedAt'] as int?,
    manager: (json['manager'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as dynamic),
    ),
  )
    ..roles = (json['roles'] as List?)
        ?.map((e) => ReviewerRoles?.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..userPreferences = (json['userPreferences'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    );
}

Map<String, dynamic> _$ReviewerToJson(Reviewer instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'isEnabled': instance.isEnabled,
      'id': instance.id,
      'guid': instance.guid,
      'roles': instance.roles?.map((e) => e?.toJson())?.toList(),
      'userPreferences': instance.userPreferences,
      'manager': instance.manager,
      'ownerId': instance.ownerId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
