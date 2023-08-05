// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icon_link_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IconLinkDetails _$IconLinkDetailsFromJson(Map<String, dynamic> json) {
  return IconLinkDetails(
    link: IconLink.fromJson(json['link'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$IconLinkDetailsToJson(IconLinkDetails instance) => <String, dynamic>{
      'link': instance.link?.toJson(),
    };
