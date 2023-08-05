// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_gsi_add.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectedGSIAdd _$SelectedGSIAddFromJson(Map<String, dynamic> json) {
  return SelectedGSIAdd(
    dcd: (json['dcd'] as List?)?.map((e) => Dcd.fromJson(e as Map<String, dynamic>))?.toList(),
    cuType: json['cuType'] as String?,
    name: json['name'] as String?,
    displayName: json['displayName'] as String?,
    description: json['description'] as String?,
    agents:
        (json['agents'] as List?)?.map((e) =>  Agent.fromJson(e as Map<String, dynamic>))?.toList(),
    status: json['status'] as String?,
    designTimeRights: (json['designTimeRights'] as List?)
        ?.map((e) =>  TimeRights.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    txnTimeRights: (json['txnTimeRights'] as List?)
        ?.map((e) =>  TimeRights?.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    layers:
        (json['layers'] as List?)?.map((e) =>  Layer.fromJson(e as Map<String, dynamic>))?.toList(),
    solutionLogic: (json['solutionLogic'] as List?)
        ?.map((e) =>  CU.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    source: json['source'] as String?,
    Industry: json['Industry'] as String?,
    version: json['version'] as String?,
    dldId: json['dldId'] as String?,
  );
}

Map<String, dynamic> _$SelectedGSIAddToJson(SelectedGSIAdd instance) => <String, dynamic>{
      'dcd': instance.dcd?.map((e) => e?.toJson())?.toList(),
      'cuType': instance.cuType,
      'name': instance.name,
      'displayName': instance.displayName,
      'description': instance.description,
      'agents': instance.agents?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'designTimeRights': instance.designTimeRights?.map((e) => e?.toJson())?.toList(),
      'txnTimeRights': instance.txnTimeRights?.map((e) => e?.toJson())?.toList(),
      'layers': instance.layers?.map((e) => e?.toJson())?.toList(),
      'solutionLogic': instance.solutionLogic?.map((e) => e?.toJson())?.toList(),
      'version': instance.version,
      'source': instance.source,
      'dldId': instance.dldId,
      'Industry': instance.Industry
    };
