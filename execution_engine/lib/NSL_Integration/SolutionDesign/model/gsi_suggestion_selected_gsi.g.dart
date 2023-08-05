// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gsi_suggestion_selected_gsi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectedGSI _$SelectedGSIFromJson(Map<String, dynamic> json) {
  return SelectedGSI(
    name: json['name'] as String?,
    displayName: json['displayName'] as String?,
    dldId: json['dldId'] as String? ?? 'DLD',
  );
}

Map<String, dynamic> _$SelectedGSIToJson(SelectedGSI instance) => <String, dynamic>{
      'name': instance.name,
      'displayName': instance.displayName,
      'dldId': instance.dldId,
    };
