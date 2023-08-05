// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_book_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllBookResult _$AllBookResultFromJson(Map<String, dynamic> json) {
  return AllBookResult(
    total: json['total'] as int?,
    content: (json['content'] as List)
        .map((e) =>BookContent?.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$AllBookResultToJson(AllBookResult instance) => <String, dynamic>{
      'total': instance.total,
      'content': instance.content?.map((e) => e.toJson()).toList(),
    };
