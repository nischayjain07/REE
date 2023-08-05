// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_decoration_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIDecorationImage _$UIDecorationImageFromJson(Map<String, dynamic> json) => UIDecorationImage()
  ..class_name = json['class_name'] as String
  ..image = json['image'] == null ? null : UINetworkImage.fromJson(json['image'] as Map<String, dynamic>)
  ..fit = (json['fit'] as num?)?.toInt()
  ..filterQuality = (json['filterQuality'] as num?)?.toInt()
  ..repeat = (json['repeat'] as num?)?.toInt()
  ..alignment = json['alignment'] as String?
  ..opacity = (json['opacity'] as num?)?.toDouble()
  ..scale = (json['scale'] as num?)?.toDouble()
  ..colorFilter = json['colorFilter'] as String?;

Map<String, dynamic> _$UIDecorationImageToJson(UIDecorationImage instance) => <String, dynamic>{
      'class_name': instance.class_name,
      'image': instance.image?.toJson(),
      'fit': instance.fit,
      'filterQuality': instance.filterQuality,
      'repeat': instance.repeat,
      'alignment': instance.alignment,
      'opacity': instance.opacity,
      'scale': instance.scale,
      'colorFilter': instance.colorFilter,
    };
