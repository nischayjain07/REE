import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/model/entity_cards/sort.dart';

part 'pageable_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class Pageable {
  final Sort? sort;
  final int? offset;
  final int? pageSize;
  final int? pageNumber;
  final bool? paged;
  final bool? unpaged;

  Pageable({
    this.sort,
    this.offset,
    this.pageSize,
    this.pageNumber,
    this.paged,
    this.unpaged,
  });

  factory Pageable.fromJson(Map<String, dynamic> json) => _$PageableFromJson(json);

  Map<String, dynamic> toJson() => _$PageableToJson(this);
}
