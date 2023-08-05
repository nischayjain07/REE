// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_solution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExportData _$ExportDataFromJson(Map<String, dynamic> json) {
  return ExportData(
    name: json['name'] as String?,
    version: json['version'] as String?,
    description: json['description'] as String?,
    readOnly: json['readOnly'] as bool?,
    imported: json['imported'] as bool?,
    itemDetails: (json['itemDetails'] as List?)?.map((e) =>   ItemDetails.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExportDataToJson(ExportData instance) => <String, dynamic>{
      'name': instance.name,
      'version': instance.version,
      'description': instance.description,
      'readOnly': instance.readOnly,
      'imported': instance.imported,
      'itemDetails': instance.itemDetails?.map((e) => e?.toJson())?.toList(),
    };
