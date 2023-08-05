// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_cu_suggestions_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TargetCUAttributeSuggestionRequest _$TargetCUAttributeSuggestionRequestFromJson(Map<String, dynamic> json) {
  return TargetCUAttributeSuggestionRequest(
    gsi: json['gsi'] as Map<String, String>?,
    hostPortURL: json['hostPortURL'] as String?,
    entityAttributeList: (json['entityAttributeList'] as List?)
        ?.map((e) => SourceAttributeDetails.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    cuName: json['cuName'] as String?,
    cuId: json['cuId'] as String?,
  );
}

Map<String, dynamic> _$TargetCUAttributeSuggestionRequestToJson(TargetCUAttributeSuggestionRequest instance) =>
    <String, dynamic>{
      'gsi': instance.gsi,
      'cuName': instance.cuName,
      'hostPortURL': instance.hostPortURL,
      'entityAttributeList': instance.entityAttributeList?.map((e) => e?.toJson())?.toList(),
      'cuId': instance.cuId,
    };
