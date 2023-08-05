// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_book_design.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookDesign _$BookDesignFromJson(Map<String, dynamic> json) {
  return BookDesign(
    templateId: json['templateId'] as String?,
    isEditable: json['isEditable'] as bool?,
    bookId: json['bookId'] as int?,
    bookCover: BookCover?.fromJson(json['bookCover'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BookDesignToJson(BookDesign instance) => <String, dynamic>{
      'templateId': instance.templateId,
      'isEditable': instance.isEditable,
      'bookId': instance.bookId,
      'bookCover': instance.bookCover,
    };
