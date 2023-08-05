// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIImage _$UIImageFromJson(Map<String, dynamic> json) => UIImage()
  ..offset = (json['offset'] as num).toDouble()
  ..offset1 = (json['offset1'] as num).toDouble()
  ..size = (json['size'] as num?)?.toDouble()
  ..size1 = (json['size1'] as num?)?.toDouble()
  ..class_name = json['class_name'] as String
  ..children = (json['children'] as List<dynamic>).map((e) => UIWidget.fromJson(e as Map<String, dynamic>)).toList()
  ..child = json['child'] == null ? null : UIWidget.fromJson(json['child'] as Map<String, dynamic>)
  ..fileUrl = json['fileUrl'] as String
  ..base64String = json['base64String'] as String?
  ..url = json['url'] as String
  ..height = (json['height'] as num).toDouble()
  ..width = (json['width'] as num).toDouble()
  ..isFixedWidth = json['isFixedWidth'] as bool?
  ..isFixedHeight = json['isFixedHeight'] as bool?
  ..fit = json['fit'] as int
  ..color = json['color'] as int
  ..filterQuality = json['filterQuality'] as int?
  ..repeat = json['repeat'] as int?
  ..sigmaX = (json['sigmaX'] as num?)?.toDouble()
  ..sigmaY = (json['sigmaY'] as num?)?.toDouble()
  ..borderRadius =
      json['borderRadius'] == null ? null : UIBorderRadius.fromJson(json['borderRadius'] as Map<String, dynamic>)
  ..isNetwork = json['isNetwork'] as bool
  ..initialblur = (json['initialblur'] as num?)?.toDouble()
  ..finalblur = (json['finalblur'] as num?)?.toDouble()
  ..blurduration = json['blurduration'] as int
  ..isAdvbluroptions = json['isAdvbluroptions'] as bool
  ..alignmentindex = json['alignmentindex'] as int
  ..alingmnetvalue = const AlignmentGeometrySerialiser().fromJson(json['alingmnetvalue'] as String)
  ..isDynamicNetworkURL = json['isDynamicNetworkURL'] == null ? false : json['isDynamicNetworkURL'] as bool
  ..dynamicNetworkURL = json['dynamicNetworkURL'] as String?;

Map<String, dynamic> _$UIImageToJson(UIImage instance) => <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'fileUrl': instance.fileUrl,
      'base64String': instance.base64String,
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
      'isFixedWidth': instance.isFixedWidth,
      'isFixedHeight': instance.isFixedHeight,
      'fit': instance.fit,
      'color': instance.color,
      'filterQuality': instance.filterQuality,
      'repeat': instance.repeat,
      'sigmaX': instance.sigmaX,
      'sigmaY': instance.sigmaY,
      'borderRadius': instance.borderRadius?.toJson(),
      'isNetwork': instance.isNetwork,
      'initialblur': instance.initialblur,
      'finalblur': instance.finalblur,
      'blurduration': instance.blurduration,
      'isAdvbluroptions': instance.isAdvbluroptions,
      'alignmentindex': instance.alignmentindex,
      'alingmnetvalue': const AlignmentGeometrySerialiser().toJson(instance.alingmnetvalue),
      'isDynamicNetworkURL': instance.isDynamicNetworkURL,
      'dynamicNetworkURL': instance.dynamicNetworkURL,
    };

UIImageNetwork _$UIImageNetworkFromJson(Map<String, dynamic> json) => UIImageNetwork(
      json['src'] as String,
    )
      ..offset = (json['offset'] as num).toDouble()
      ..offset1 = (json['offset1'] as num).toDouble()
      ..size = (json['size'] as num?)?.toDouble()
      ..size1 = (json['size1'] as num?)?.toDouble()
      ..class_name = json['class_name'] as String
      ..children = (json['children'] as List<dynamic>).map((e) => UIWidget.fromJson(e as Map<String, dynamic>)).toList()
      ..child = json['child'] == null ? null : UIWidget.fromJson(json['child'] as Map<String, dynamic>)
      ..scale = (json['scale'] as num?)?.toDouble()
      ..headers = (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      );

Map<String, dynamic> _$UIImageNetworkToJson(UIImageNetwork instance) => <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'src': instance.src,
      'scale': instance.scale,
      'headers': instance.headers,
    };
