// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggestions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Suggestions _$SuggestionsFromJson(Map<String, dynamic> json) {
  return Suggestions(
    book: json['book'] as String?,
    gsi: json['gsi'] as String?,
    hostPortURL: json['hostPortURL'] as String?,
    tenant: json['tenant'] as String?,
    cu: json['cu'] as String?,
    selectedRoleList: (json['selectedRoleList'] as List?)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$SuggestionsToJson(Suggestions instance) => <String, dynamic>{
      'book': instance.book,
      'gsi': instance.gsi,
      'cu': instance.cu,
      'tenant': instance.tenant,
      'hostPortURL': instance.hostPortURL,
      'selectedRoleList': instance.selectedRoleList,
    };
