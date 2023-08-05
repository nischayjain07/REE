// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_suggestions_response_at_EntityLevel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgentsSuggestionResponseAtEntityLevel _$AgentsSuggestionResponseAtEntityLevelFromJson(Map<String, dynamic> json) {
  return AgentsSuggestionResponseAtEntityLevel(
    cuName: json['CU'] as String?,
    entityName: json['Entity'] as String?,
    roles: (json['roles'] as List?)
        ?.map((e) => AgentRoles.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AgentsSuggestionResponseAtEntityLevelToJson(AgentsSuggestionResponseAtEntityLevel instance) =>
    <String, dynamic>{
      'CU': instance.cuName,
      'Entity': instance.entityName,
      'roles': instance.roles?.map((e) => e?.toJson())?.toList(),
    };
