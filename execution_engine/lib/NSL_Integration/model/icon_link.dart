import 'package:json_annotation/json_annotation.dart';

part 'icon_link.g.dart';

@JsonSerializable(explicitToJson: true)
class IconLink {
  String? desktop;
  String? mobile;
  String? tab;
  String? any;

  @JsonKey(defaultValue: '')
  IconLink({this.desktop, this.mobile, this.tab, this.any});

  factory IconLink.fromJson(Map<String, dynamic> json) => _$IconLinkFromJson(json);

  Map<String, dynamic> toJson() => _$IconLinkToJson(this);
}
