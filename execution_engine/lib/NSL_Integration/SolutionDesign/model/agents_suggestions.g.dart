// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agents_suggestions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgentsSuggestionResponse _$AgentsSuggestionResponseFromJson(Map<String, dynamic> json) {
  return AgentsSuggestionResponse(
    GSI: json['GSI'] as String?,
    roles: (json['roles'] as List?)
        ?.map((e) => AgentRoles?.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AgentsSuggestionResponseToJson(AgentsSuggestionResponse instance) => <String, dynamic>{
      'GSI': instance.GSI,
      'roles': instance.roles?.map((e) => e?.toJson())?.toList(),
    };
