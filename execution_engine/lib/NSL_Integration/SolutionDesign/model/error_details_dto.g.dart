// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorDetailsDTO _$ErrorDetailsDTOFromJson(Map<String, dynamic> json) => ErrorDetailsDTO(
      errorLevel: json['errorLevel'] == null ? null : json['errorLevel'] as String?,
      message: json['message'] == null ? null : json['message'] as String?,
    );

Map<String, dynamic> _$ErrorDetailsDTOToJson(ErrorDetailsDTO instance) => <String, dynamic>{
      'errorLevel': instance.errorLevel,
      'message': instance.message,
    };
