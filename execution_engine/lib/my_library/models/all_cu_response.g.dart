// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_cu_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllCU _$AllCUFromJson(Map<String, dynamic> json) {
  return AllCU(
    status: json['status'] as int?,
    message: json['message'] as String?,
    result: AllCUResult?.fromJson(json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AllCUToJson(AllCU instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result?.toJson(),
    };
