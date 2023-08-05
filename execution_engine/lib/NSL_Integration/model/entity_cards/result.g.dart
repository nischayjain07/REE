// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) {
  return Result(
    name: json['name'] as String?,
    generalEntityID: json['generalEntityID'] as int?,
    transEntityRecords: (json['transEntityRecords'] as List?)
        ?.map((e) =>TransEntityRecords?.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'name': instance.name,
      'generalEntityID': instance.generalEntityID,
      'transEntityRecords': instance.transEntityRecords?.map((e) => e?.toJson())?.toList()
    };
