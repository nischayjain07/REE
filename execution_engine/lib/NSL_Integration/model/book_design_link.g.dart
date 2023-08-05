// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_design_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookDesignLink _$BookDesignLinkFromJson(Map<String, dynamic> json) {
  return BookDesignLink(
    desktop: json['desktop'] as String?,
    mobile: json['mobile'] as String?,
    tab: json['tab'] as String?,
    any: json['any'] as String?,
  );
}

Map<String, dynamic> _$BookDesignLinkToJson(BookDesignLink instance) => <String, dynamic>{
      'desktop': instance.desktop,
      'mobile': instance.mobile,
      'tab': instance.tab,
      'any': instance.any,
    };
