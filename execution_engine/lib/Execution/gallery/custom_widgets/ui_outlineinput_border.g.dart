// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_outlineinput_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIOutlineInputBorder _$UIOutlineInputBorderFromJson(Map<String, dynamic> json) => UIOutlineInputBorder(
      labelText: json['labelText'] as String?,
      borderRadius: (json['borderRadius'] as num?)?.toDouble(),
      borderSideWidth: (json['borderSideWidth'] as num?)?.toDouble(),
      borderSideColor: json['borderSideColor'] as String?,
      isOutlineBorder: json['isOutlineBorder'] as bool,
    )
      ..class_name = json['class_name'] as String
      ..isOutlineBorder = json['isOutlineBorder'] as bool
      ..isBorderPropertyVisible = json['isBorderPropertyVisible'] as bool
      ..borderRadiusWidget = json['borderRadiusWidget'] == null
          ? UIBorderRadius(radius: 5)
          : UIBorderRadius.fromJson(json['borderRadiusWidget'] as Map<String, dynamic>);

Map<String, dynamic> _$UIOutlineInputBorderToJson(UIOutlineInputBorder instance) => <String, dynamic>{
      'class_name': instance.class_name,
      'borderRadius': instance.borderRadius,
      'borderSideWidth': instance.borderSideWidth,
      'borderSideColor': instance.borderSideColor,
      'isOutlineBorder': instance.isOutlineBorder,
      'isBorderPropertyVisible': instance.isBorderPropertyVisible,
      'labelText': instance.labelText,
      'borderRadiusWidget': instance.borderRadiusWidget?.toJson()
    };
