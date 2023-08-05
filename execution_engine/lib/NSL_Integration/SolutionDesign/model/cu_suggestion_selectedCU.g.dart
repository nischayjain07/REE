// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cu_suggestion_selectedCU.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectedCU _$SelectedCUFromJson(Map<String, dynamic> json) {
  return SelectedCU(
    name: json['name'] as String?,
    index: json['index'] as int?,
    source: json['source'] as String? ?? 'DLD',
    nextTriggerSet: (json['nextTriggerSet'] as List?)?.map((e) =>   NextTriggerSet.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SelectedCUToJson(SelectedCU instance) => <String, dynamic>{
      'name': instance.name,
      'index': instance.index,
      'source': instance.source,
      'nextTriggerSet': instance.nextTriggerSet?.map((e) => e?.toJson())?.toList(),
    };
