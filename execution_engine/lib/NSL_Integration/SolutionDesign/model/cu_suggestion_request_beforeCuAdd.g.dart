// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cu_suggestion_request_beforeCuAdd.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CUSuggestionRequestBeforeCuAdd _$CUSuggestionRequestBeforeCuAddFromJson(Map<String, dynamic> json) {
  return CUSuggestionRequestBeforeCuAdd(
    gsi: json['gsi'] as String?,
    hostPortURL: json['hostPortURL'] as String?,
    activeCuIndex: json['activeCuIndex'] as int?,
  );
}

Map<String, dynamic> _$CUSuggestionRequestBeforeCuAddToJson(CUSuggestionRequestBeforeCuAdd instance) =>
    <String, dynamic>{
      'gsi': instance.gsi,
      'activeCuIndex': instance.activeCuIndex,
      'hostPortURL': instance.hostPortURL,
    };
