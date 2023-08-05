// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gsi_suggestions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GSISuggestions _$GSISuggestionsFromJson(Map<String, dynamic> json) {
  return GSISuggestions(
    Book: json['Book'] as String?,
    GSIList: (json['GSIList'] as List?)?.map((e) => SelectedGSI.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GSISuggestionsToJson(GSISuggestions instance) =>
    <String, dynamic>{'Book': instance.Book, 'GSIList': instance.GSIList};
