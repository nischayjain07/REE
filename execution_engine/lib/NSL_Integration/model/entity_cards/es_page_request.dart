import 'package:json_annotation/json_annotation.dart';

part 'es_page_request.g.dart';

@JsonSerializable(nullable: true)
class ESPageRequest {
  int? timeUnitSecs;
  String? scrollId;
  int? pageSize;

  ESPageRequest({this.timeUnitSecs, this.scrollId, this.pageSize});

  factory ESPageRequest.fromJson(Map<String, dynamic> json) => _$ESPageRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ESPageRequestToJson(this);
}
