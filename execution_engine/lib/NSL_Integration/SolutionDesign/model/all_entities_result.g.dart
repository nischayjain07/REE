// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_entities_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllEntityResult _$AllEntityResultFromJson(Map<String, dynamic> json) {
  return AllEntityResult(
    totalPages: json['totalPages'] as int?,
    totalResults: json['totalResults'] as int?,
    data: (json['data'] as List?)
        ?.map((e) => AllEntityContent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AllEntityResultToJson(AllEntityResult instance) => <String, dynamic>{
      'totalPages': instance.totalPages,
      'data': instance.data?.map((e) => e?.toJson())?.toList(),
      'totalResults': instance.totalResults,
    };
