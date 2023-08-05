import 'package:json_annotation/json_annotation.dart';
import 'package:execution_engine/NSL_Integration/model/book_design_link.dart';
import 'package:execution_engine/NSL_Integration/model/entity_model.dart';

part 'book_cover.g.dart';

@JsonSerializable(explicitToJson: true)
class BookCover {
  String? fontFamily;
  dynamic fontSize;
  Ontology? ontology;
  BookDesignLink? link;

  BookCover({this.fontFamily, this.fontSize, this.ontology, this.link});

  factory BookCover.fromJson(Map<String, dynamic> json) => _$BookCoverFromJson(json);

  Map<String, dynamic> toJson() => _$BookCoverToJson(this);
}
