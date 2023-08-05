// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cu_suggestion_request_afterCuAdd.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CUSuggestionRequestAfterCuAdd _$CUSuggestionRequestFromJson(Map<String, dynamic> json) {
  return CUSuggestionRequestAfterCuAdd(
    gsi: json['gsi'] as String?,
    hostPortURL: json['hostPortURL'] as String?,
    selectedCUList: (json['selectedCUList'] as List?)?.map((e) =>   SelectedCU.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    activeCuIndex: json['activeCuIndex'] as int?,
  );
}

Map<String, dynamic> _$CUSuggestionRequestToJson(CUSuggestionRequestAfterCuAdd instance) => <String, dynamic>{
      'gsi': instance.gsi,
      'activeCuIndex': instance.activeCuIndex,
      'hostPortURL': instance.hostPortURL,
      'selectedCUList': instance.selectedCUList?.map((e) => e?.toJson())?.toList(),
    };
