// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_border_side.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIBorderSide _$UIBorderSideFromJson(Map<String, dynamic> json) => UIBorderSide()
  ..color = json['color'] as int
  ..width = (json['width'] as num).toDouble()
  ..style = json['style'] as String?
  ..strokeAlign = (json['strokeAlign'] as num?)?.toDouble();

Map<String, dynamic> _$UIBorderSideToJson(UIBorderSide instance) => <String, dynamic>{
      'color': instance.color,
      'width': instance.width,
      'style': instance.style,
      'strokeAlign': instance.strokeAlign,
    };
