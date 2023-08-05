// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Group _$GroupFromJson(Map<String, dynamic> json) {
  return Group(
    id: json['id'] as int?,
    name: json['name'] as String?,
    description: json['description'] as String?,
    users: (json['users'] as List?)?.map((e) =>   User.fromJson(e as Map<String, dynamic>))?.toList(),
  );
}

Map<String, dynamic> _$GroupToJson(Group instance) => <String, dynamic>{
      'id': instance.id,
      'users': instance.users?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'description': instance.description,
    };
