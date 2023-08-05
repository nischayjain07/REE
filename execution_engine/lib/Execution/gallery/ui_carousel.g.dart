// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_carousel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UICarousel _$UICarouselFromJson(Map<String, dynamic> json) => UICarousel()
  ..offset = (json['offset'] as num).toDouble()
  ..offset1 = (json['offset1'] as num).toDouble()
  ..size = (json['size'] as num?)?.toDouble()
  ..size1 = (json['size1'] as num?)?.toDouble()
  ..class_name = json['class_name'] as String
  ..children = (json['children'] as List<dynamic>).map((e) => UIWidget.fromJson(e as Map<String, dynamic>)).toList()
  ..child = json['child'] == null ? null : UIWidget.fromJson(json['child'] as Map<String, dynamic>)
  ..height = (json['height'] as num).toDouble()
  ..isFixedHeight = json['isFixedHeight'] as bool?
  ..aspectRatio = (json['aspectRatio'] as num).toDouble()
  ..autoPlay = json['autoPlay'] as bool
  ..enableInfiniteScroll = json['enableInfiniteScroll'] as bool
  ..enlargeCenterPage = json['enlargeCenterPage'] as bool
  ..reverse = json['reverse'] as bool
  ..autoPlayInterval = json['autoPlayInterval'] as int
  ..autoPlayAnimationDuration = json['autoPlayAnimationDuration'] as int
  ..pauseAutoPlayOnTouch = json['pauseAutoPlayOnTouch'] as bool
  ..currentindex = json['currentindex'] as int
  ..enableCarouselIndicator = json['enableCarouselIndicator'] as bool
  ..indicatorActivecolor = json['indicatorActivecolor'] as int
  ..indicatorInactivecolor = json['indicatorInactivecolor'] as int
  // ..items = (json['items'] as List<dynamic>).map((e) => UIWidget.fromJson(e as Map<String, dynamic>)).toList()
  ..isOpen = (json['isOpen'] as List<dynamic>).map((e) => e as bool).toList()
  ..controllerHeight = (json['controllerHeight'] as num).toDouble()
  ..controllerWidth = (json['controllerWidth'] as num).toDouble()
  ..viewport = (json['viewport'] as num).toDouble()
  ..imagewidth = (json['imagewidth'] as num).toDouble()
  ..indicatorMarginV = (json['indicatorMarginV'] as num).toDouble()
  ..indicatorMarginH = (json['indicatorMarginH'] as num).toDouble()
  ..buttonCarouselController =
      const CarouselControllerSerialiser().fromJson(json['buttonCarouselController'] as String);

Map<String, dynamic> _$UICarouselToJson(UICarousel instance) => <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'height': instance.height,
      'isFixedHeight': instance.isFixedHeight,
      'aspectRatio': instance.aspectRatio,
      'autoPlay': instance.autoPlay,
      'enableInfiniteScroll': instance.enableInfiniteScroll,
      'enlargeCenterPage': instance.enlargeCenterPage,
      'reverse': instance.reverse,
      'autoPlayInterval': instance.autoPlayInterval,
      'autoPlayAnimationDuration': instance.autoPlayAnimationDuration,
      'pauseAutoPlayOnTouch': instance.pauseAutoPlayOnTouch,
      'currentindex': instance.currentindex,
      'enableCarouselIndicator': instance.enableCarouselIndicator,
      'indicatorActivecolor': instance.indicatorActivecolor,
      'indicatorInactivecolor': instance.indicatorInactivecolor,
      // 'items': instance.items.map((e) => e.toJson()).toList(),
      'isOpen': instance.isOpen,
      'controllerHeight': instance.controllerHeight,
      'controllerWidth': instance.controllerWidth,
      'viewport': instance.viewport,
      'imagewidth': instance.imagewidth,
      'indicatorMarginV': instance.indicatorMarginV,
      'indicatorMarginH': instance.indicatorMarginH,
      'buttonCarouselController': const CarouselControllerSerialiser().toJson(instance.buttonCarouselController),
    };
