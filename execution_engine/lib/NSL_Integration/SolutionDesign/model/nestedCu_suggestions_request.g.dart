// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nestedCu_suggestions_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NestedCuSuggestionRequest _$NestedCuSuggestionRequestFromJson(Map<String, dynamic> json) {
  return NestedCuSuggestionRequest(
      book: json['book'] as String?,
      chapter: json['chapter'] as String?,
      gsi: (json['gsi'] as List?)?.map((e) => e as String).toList(),
      cu: (json['cu'] as List?)?.map((e) => e as String).toList(),
      entities: (json['entities'] as List?)?.map((e) => e as ItemData)?.toList(),
      hostPortURL: json['hostPortURL'] as String?,
      isNested: json['isNested'] as bool?);
}

Map<String, dynamic> _$NestedCuSuggestionRequestToJson(NestedCuSuggestionRequest instance) => <String, dynamic>{
      'book': instance.book ?? "",
      'chapter': instance.chapter ?? "",
      'gsi': instance.gsi,
      'cu': instance.cu,
      'entities': instance.entities,
      'hostPortURL': instance.hostPortURL,
      'isNested': instance.isNested
    };
