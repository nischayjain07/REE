// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_book_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllBookResponse _$AllBookResponseFromJson(Map<String, dynamic> json) {
  return AllBookResponse(
    status: json['status'] as int?,
    message: json['message'] as String?,
    result: AllBookResult?.fromJson(json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AllBookResponseToJson(AllBookResponse instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result?.toJson(),
    };
