// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_cover.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookCover _$BookCoverFromJson(Map<String, dynamic> json) {
  return BookCover(
    fontFamily: json['fontFamily'] as String?,
    fontSize: json['fontSize'] as dynamic,
    ontology: Ontology?.fromJson(json['ontology'] as Map<String, dynamic>),
    link: BookDesignLink?.fromJson(json['link'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BookCoverToJson(BookCover instance) => <String, dynamic>{
      'fontFamily': instance.fontFamily,
      'fontSize': instance.fontSize,
      'ontology': instance.ontology?.toJson(),
      'link': instance.link?.toJson(),
    };
