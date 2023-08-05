// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_org_unit_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllOrgUnitResponse _$AllOrgUnitResponseFromJson(Map<String, dynamic> json) {
  return AllOrgUnitResponse(
    totalOrgUnits: json['totalOrgUnits'] as int?,
    content:
        (json['content'] as List?)?.map((e) => Agents?.fromJson(e as Map<String, dynamic>)).toList(),
    activeOrgUnits: json['activeOrgUnits'] as int?,
  );
}

Map<String, dynamic> _$AllOrgUnitResponseToJson(AllOrgUnitResponse instance) => <String, dynamic>{
      'totalOrgUnits': instance.totalOrgUnits,
      'content': instance.content?.map((e) => e.toJson()).toList(),
      'activeOrgUnits': instance.activeOrgUnits,
    };
