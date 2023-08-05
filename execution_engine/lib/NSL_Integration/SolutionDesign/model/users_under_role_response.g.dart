// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_under_role_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllUsers _$AllUsersFromJson(Map<String, dynamic> json) {
  return AllUsers(
    users: (json['users'] as List?)?.map((e) => User.fromJson(e as Map<String, dynamic>))?.toList(),
  );
}

Map<String, dynamic> _$AllUsersToJson(AllUsers instance) => <String, dynamic>{
      'users': instance.users?.map((e) => e?.toJson())?.toList(),
    };
