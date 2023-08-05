// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_book_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookContent _$BookContentFromJson(Map<String, dynamic> json) {
  return BookContent(
    displayName: json['displayName'] as String?,
    design: BookDesign?.fromJson(json['design'] as Map<String, dynamic>),
    name: json['name'] as String?,
    id: json['id'] as int?,
    status: json['status'] as String?,
    dsdStatus: json['status'] as String?,
    source: json['source'] as String?,
    dsdId: json['dsdId'] as String?,
    dsdMetadataId: json['dsdMetadataId'] as String?,
    isApproved: json['isApproved'] as bool?,
    description: json['description'] as String?,
    designTimeRights: (json['designTimeRights'] as List?)
        ?.map((e) =>  TimeRights?.fromJson(e as Map<String, dynamic>))
        .toList(),
    txnTimeRights: (json['txnTimeRights'] as List?)
        ?.map((e) => TimeRights?.fromJson(e as Map<String, dynamic>))
        .toList(),
    keywords: (json['keywords'] as List?)?.map((e) => e as String).toList(),
    ontology: (json['ontology'] as List?)
        ?.map((e) => Ontology?.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$BookContentToJson(BookContent instance) => <String, dynamic>{
      'displayName': instance.displayName,
      'design': instance.design?.toJson(),
      'name': instance.name,
      'id': instance.id,
      'status': instance.status,
      'dsdStatus': instance.dsdStatus,
      'dsdId': instance.dsdId,
      'dsdMetadataId': instance.dsdMetadataId,
      'isApproved': instance.isApproved,
      'source': instance.source,
      'description': instance.description,
      'designTimeRights': instance.designTimeRights?.map((e) => e.toJson()).toList(),
      'txnTimeRights': instance.txnTimeRights?.map((e) => e.toJson()).toList(),
      'keywords': instance.keywords,
      'ontology': instance.ontology?.map((e) => e.toJson()).toList(),
    };
