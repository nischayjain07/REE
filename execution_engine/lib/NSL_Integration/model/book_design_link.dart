import 'package:json_annotation/json_annotation.dart';

part 'book_design_link.g.dart';

@JsonSerializable()
class BookDesignLink {
  String? desktop;
  String? mobile;
  String? tab;
  String? any;

  BookDesignLink({this.desktop, this.mobile, this.tab, this.any});

  factory BookDesignLink.fromJson(Map<String, dynamic> json) => _$BookDesignLinkFromJson(json);

  Map<String, dynamic> toJson() => _$BookDesignLinkToJson(this);
}
