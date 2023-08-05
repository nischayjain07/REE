import 'package:json_annotation/json_annotation.dart';
import 'package:execution_engine/NSL_Integration/model/all_book_content.dart';

part 'all_book_result.g.dart';

@JsonSerializable(explicitToJson: true)
class AllBookResult {
  int? total;
  @JsonKey(defaultValue: [])
  List<BookContent>? content;

  AllBookResult({this.total, this.content});

  factory AllBookResult.fromJson(Map<String, dynamic> json) => _$AllBookResultFromJson(json);

  Map<String, dynamic> toJson() => _$AllBookResultToJson(this);
}
