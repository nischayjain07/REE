// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorDTO _$ErrorDTOFromJson(Map<String, dynamic> json) => ErrorDTO(
      errorDetails: (json['errorDetails'] as List<dynamic>?)
          ?.map((e) => ErrorDetailsDTO.fromJson(e as Map<String, dynamic>))
          ?.toList(),
    );

Map<String, dynamic> _$ErrorDTOToJson(ErrorDTO instance) => <String, dynamic>{
      'errorDetails': instance.errorDetails?.map((e) => e.toJson())?.toList(),
    };
