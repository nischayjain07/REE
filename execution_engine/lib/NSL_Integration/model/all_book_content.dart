import 'package:json_annotation/json_annotation.dart';
import 'package:execution_engine/NSL_Integration/model/all_book_design.dart';
import 'package:execution_engine/NSL_Integration/model/entity_model.dart';

part 'all_book_content.g.dart';

@JsonSerializable(explicitToJson: true)
class BookContent {
  String? displayName;
  BookDesign? design;
  String? name;
  String? dsdId;
  String? dsdMetadataId;
  int? id;
  String? status;
  String? dsdStatus;
  String? description;
  String? source;
  bool? isApproved;

  List<TimeRights>? designTimeRights;

  List<TimeRights>? txnTimeRights;
  List<String>? keywords;
  List<Ontology>? ontology;

  @JsonKey(defaultValue: '')
  BookContent(
      {this.displayName,
      this.design,
      this.name,
      this.id,
      this.status,
      this.dsdStatus,
      this.dsdId,
      this.dsdMetadataId,
      this.source,
      this.description,
      this.designTimeRights,
      this.txnTimeRights,
      this.keywords,
      this.ontology,
      this.isApproved});

  factory BookContent.fromJson(Map<String, dynamic> json) => _$BookContentFromJson(json);

  Map<String, dynamic> toJson() => _$BookContentToJson(this);
}
