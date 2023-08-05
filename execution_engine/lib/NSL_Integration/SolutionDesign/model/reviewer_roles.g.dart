// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviewer_roles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewerRoles _$ReviewerRolesFromJson(Map<String, dynamic> json) {
  return ReviewerRoles(
    name: json['name'] as String?,
    description: json['description'] as String?,
    isEnabled: json['isEnabled'] as bool?,
    isAdmin: json['isAdmin'] as bool?,
    id: json['id'] as int?,
  );
}

Map<String, dynamic> _$ReviewerRolesToJson(ReviewerRoles instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'isEnabled': instance.isEnabled,
      'isAdmin': instance.isAdmin,
      'id': instance.id,
    };
