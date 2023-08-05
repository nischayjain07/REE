// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_box_decoration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIBoxDecoration _$UIBoxDecorationFromJson(Map<String, dynamic> json) => UIBoxDecoration()
  ..class_name = json['class_name'] as String
  ..color = json['color'] as int?
  ..shape = json['shape'] as String
  ..backgroundBlendMode = json['backgroundBlendMode'] as String?
  ..isGradient = json['isGradient'] as bool?
  ..border = json['border'] == null ? null : UIBorder.fromJson(json['border'] as Map<String, dynamic>)
  ..borderRadius =
      json['borderRadius'] == null ? null : UIBorderRadius.fromJson(json['borderRadius'] as Map<String, dynamic>)
  // ..boxShadow = json['boxShadow'] == null
  //     ? null
  //     : UILinearGradient.fromJson(
  //         json['boxShadow'] as Map<String, dynamic>)
  ..linearGradient =
      json['linearGradient'] == null ? null : UILinearGradient.fromJson(json['linearGradient'] as Map<String, dynamic>)
  ..image = json['image'] == null ? null : UIDecorationImage.fromJson(json['image'] as Map<String, dynamic>);

Map<String, dynamic> _$UIBoxDecorationToJson(UIBoxDecoration instance) => <String, dynamic>{
      'class_name': instance.class_name,
      'color': instance.color,
      'shape': instance.shape,
      'backgroundBlendMode': instance.backgroundBlendMode,
      'isGradient': instance.isGradient,
      'border': instance.border?.toJson(),
      'borderRadius': instance.borderRadius?.toJson(),
      // 'boxShadow': instance.boxShadow.toJson(),
      'linearGradient': instance.linearGradient?.toJson(),
      'image': instance.image?.toJson(),
    };
