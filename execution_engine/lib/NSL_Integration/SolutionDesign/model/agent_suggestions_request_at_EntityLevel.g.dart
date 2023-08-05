// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_suggestions_request_at_EntityLevel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgentsSuggestionRequestAtEntityLevel _$AgentsSuggestionRequestAtEntityLevelFromJson(Map<String, dynamic> json) {
  return AgentsSuggestionRequestAtEntityLevel(
      book: json['book'] as String?,
      gsi: json['gsi'] as String?,
      cu: json['cu'] as String?,
      entity: json['entity'] as String?,
      selectedRoleList: (json['selectedRoleList'] as List?)?.map((e) => e as String)?.toList(),
      hostPortURL: json['hostPortURL'] as String?,
      tenant: json['tenant'] as String);
}

Map<String, dynamic> _$AgentsSuggestionRequestAtEntityLevelToJson(AgentsSuggestionRequestAtEntityLevel instance) =>
    <String, dynamic>{
      'book': instance.book,
      'gsi': instance.gsi,
      'cu': instance.cu,
      'entity': instance.entity,
      'selectedRoleList': instance.selectedRoleList,
      'tenant': instance.tenant,
      'hostPortURL': instance.hostPortURL
    };
