// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return Author(
    name: json['name'] as String?,
    id: json['name'] as String?,
    email: (json['email'] as List?)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'email': instance.email,
    };
