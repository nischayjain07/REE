// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) => ErrorResponse(
      cuName: json['cuName'] == null ? null : json['cuName'] as String?,
      exceptionResponseMapForSolLogic: (json['exceptionResponseMapForSolLogic'] as Map<String, dynamic>)?.map(
        (k, e) => MapEntry(k, ErrorResponse.fromJson(e as Map<String, dynamic>)),
      ),
      cuExceptions: (json['cuExceptions'] == null ? null : json['cuExceptions'] as Map<String, dynamic>)?.map(
        (k, e) => MapEntry(k, (e as List<dynamic>).map((e) => ErrorDTO.fromJson(e as Map<String, dynamic>)).toList()),
      ),
    );

Map<String, dynamic> _$ErrorResponseToJson(ErrorResponse instance) => <String, dynamic>{
      'cuName': instance.cuName,
      'exceptionResponseMapForSolLogic':
          instance.exceptionResponseMapForSolLogic?.map((k, e) => MapEntry(k, e.toJson())),
      'cuExceptions': instance.cuExceptions?.map((k, e) => MapEntry(k, e.map((e) => e.toJson()).toList())),
    };
