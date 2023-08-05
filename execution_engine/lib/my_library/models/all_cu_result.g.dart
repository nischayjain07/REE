// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_cu_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllCUResult _$AllCUResultFromJson(Map<String, dynamic> json) {
  return AllCUResult(
    total: json['total'] as int?,
    content:
        (json['content'] as List?)?.map((e) => CU.fromJson(e as Map<String, dynamic>)).toList(),
    pageable: json['pageable'] as Map<String, dynamic>?,
    data: (json['data'] as List?)?.map((e) => CU.fromJson(e as Map<String, dynamic>)).toList(),
    totalPages: json['totalPages'] as int?,
    totalResults: json['totalResults'] as int?,
  );
}

Map<String, dynamic> _$AllCUResultToJson(AllCUResult instance) => <String, dynamic>{
      'total': instance.total,
      'content': instance.content?.map((e) => e.toJson()).toList(),
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'pageable': instance.pageable,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
    };
