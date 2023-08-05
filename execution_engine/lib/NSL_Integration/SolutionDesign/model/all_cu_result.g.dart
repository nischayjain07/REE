// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_cu_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllCUResult _$AllCUResultFromJson(Map<String, dynamic> json) {
  return AllCUResult(
    totalResults: json['totalResults'] as int?,
    data: (json['data'] as List?)?.map((e) => CU.fromJson(e as Map<String, dynamic>))?.toList() ?? [],
  );
}

Map<String, dynamic> _$AllCUResultToJson(AllCUResult instance) => <String, dynamic>{
      'totalResults': instance.totalResults,
      'data': instance.data?.map((e) => e?.toJson())?.toList(),
    };
