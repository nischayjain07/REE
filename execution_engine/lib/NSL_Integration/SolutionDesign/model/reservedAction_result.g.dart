// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservedAction_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservedActionResult _$ReservedActionResultFromJson(Map<String, dynamic> json) {
  return ReservedActionResult(
    data: (json['data'] as List?)?.map((e) =>   ReservedAction?.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ReservedActionResultToJson(ReservedActionResult instance) => <String, dynamic>{
      'data': instance.data,
    };
