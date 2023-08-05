// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pageable_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pageable _$PageableFromJson(Map<String, dynamic> json) {
  return Pageable(
    sort: Sort?.fromJson(json['sort'] as Map<String, dynamic>),
    offset: json['offset'] as int?,
    pageSize: json['pageSize'] as int?,
    pageNumber: json['pageNumber'] as int?,
    paged: json['paged'] as bool?,
    unpaged: json['unpaged'] as bool?,
  );
}

Map<String, dynamic> _$PageableToJson(Pageable instance) => <String, dynamic>{
      'sort': instance.sort?.toJson(),
      'offset': instance.offset,
      'pageSize': instance.pageSize,
      'pageNumber': instance.pageNumber,
      'paged': instance.paged,
      'unpaged': instance.unpaged,
    };
