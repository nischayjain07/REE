import 'package:json_annotation/json_annotation.dart';
import 'package:execution_engine/NSL_Integration/model/icon_link.dart';

part 'icon_link_details.g.dart';

@JsonSerializable(explicitToJson: true)
class IconLinkDetails {
  IconLink? link;

  IconLinkDetails({this.link});

  factory IconLinkDetails.fromJson(Map<String, dynamic> json) => _$IconLinkDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$IconLinkDetailsToJson(this);
}
