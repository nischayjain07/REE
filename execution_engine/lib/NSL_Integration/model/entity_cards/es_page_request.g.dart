// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'es_page_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ESPageRequest _$ESPageRequestFromJson(Map<String, dynamic> json) {
  return ESPageRequest(
    timeUnitSecs: json['timeUnitSecs'] as int?,
    scrollId: json['scrollId'] as String?,
    pageSize: json['pageSize'] as int?,
  );
}

Map<String, dynamic> _$ESPageRequestToJson(ESPageRequest instance) => <String, dynamic>{
      'timeUnitSecs': instance.timeUnitSecs,
      'scrollId': instance.scrollId,
      'pageSize': instance.pageSize
    };
