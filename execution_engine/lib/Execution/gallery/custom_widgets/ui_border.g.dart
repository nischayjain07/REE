// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIBorder _$UIBorderFromJson(Map<String, dynamic> json) => UIBorder()
  ..class_name = json['class_name'] as String
  ..all = json['all'] == null ? null : UIBorderSide.fromJson(json['all'] as Map<String, dynamic>)
  ..top = json['top'] == null ? null : UIBorderSide.fromJson(json['top'] as Map<String, dynamic>)
  ..right = json['right'] == null ? null : UIBorderSide.fromJson(json['right'] as Map<String, dynamic>)
  ..bottom = json['bottom'] == null ? null : UIBorderSide.fromJson(json['bottom'] as Map<String, dynamic>)
  ..left = json['left'] == null ? null : UIBorderSide.fromJson(json['left'] as Map<String, dynamic>);

Map<String, dynamic> _$UIBorderToJson(UIBorder instance) => <String, dynamic>{
      'class_name': instance.class_name,
      'all': instance.all?.toJson(),
      'top': instance.top?.toJson(),
      'right': instance.right?.toJson(),
      'bottom': instance.bottom?.toJson(),
      'left': instance.left?.toJson(),
    };
