// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icon_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IconLink _$IconLinkFromJson(Map<String, dynamic> json) {
  return IconLink(
    desktop: json['desktop'] as String?,
    mobile: json['mobile'] as String?,
    tab: json['tab'] as String?,
    any: json['any'] as String?,
  );
}

Map<String, dynamic> _$IconLinkToJson(IconLink instance) => <String, dynamic>{
      'desktop': instance.desktop,
      'mobile': instance.mobile,
      'tab': instance.tab,
      'any': instance.any,
    };
