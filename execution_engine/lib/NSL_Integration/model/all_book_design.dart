import 'package:json_annotation/json_annotation.dart';
import 'package:execution_engine/NSL_Integration/model/book_cover.dart';

part 'all_book_design.g.dart';

@JsonSerializable()
class BookDesign {
  String? templateId;

  bool? isEditable;

  int? bookId;

  BookCover? bookCover;

  BookDesign({this.templateId, this.isEditable, this.bookId, this.bookCover});

  factory BookDesign.fromJson(Map<String, dynamic> json) => _$BookDesignFromJson(json);

  Map<String, dynamic> toJson() => _$BookDesignToJson(this);
}
