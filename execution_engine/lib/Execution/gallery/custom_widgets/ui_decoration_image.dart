import 'package:execution_engine/Execution/gallery/custom_widgets/ui_network_image.dart';
import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ui_decoration_image.g.dart';

final Map _Alignment = {
  'bottomCenter': Alignment.bottomCenter,
  'bottomLeft': Alignment.bottomLeft,
  'bottomRight': Alignment.bottomRight,
  'center': Alignment.center,
  'centerLeft': Alignment.centerLeft,
  'centerRight': Alignment.centerRight,
  'topCenter': Alignment.topCenter,
  'topLeft': Alignment.topLeft,
  'topRight': Alignment.topRight,
};

Map<String, ColorFilter> _colorFilter = {
  'linearToSrgbGamma': ColorFilter.linearToSrgbGamma(),
  'srgbToLinearGamma': ColorFilter.srgbToLinearGamma()
};

List<String> imageRepeat = ImageRepeat.values.map((e) => e.name).toList();
List<String> filter = FilterQuality.values.map((e) => e.name).toList();
List<String> boxFit = BoxFit.values.map((e) => e.name).toList();

@JsonSerializable(explicitToJson: true)
class UIDecorationImage {
  @JsonKey(includeFromJson: false, includeToJson: false)
  UIWidget? widget;
  String class_name = 'UIDecorationImage';

  UINetworkImage? image;
  int? fit;
  int? filterQuality;
  int? repeat;
  String? alignment = 'center';
  double? opacity;
  double? scale;
  String? colorFilter;

  TextEditingController _opacityController = TextEditingController();
  TextEditingController _scaleController = TextEditingController();

  UIDecorationImage({this.widget}) {
    image ??= UINetworkImage(widget: widget);
    fit ??= 2;
    scale ??= opacity ??= 1;
    filterQuality ??= 1;
    repeat ??= 3;
    colorFilter ??= 'linearToSrgbGamma';
  }

  DecorationImage property() {
    return DecorationImage(
        image: image!.property(),
        alignment: _Alignment[alignment],
        fit: BoxFit.values[fit ?? 2],
        opacity: opacity!,
        scale: scale!,
        filterQuality: FilterQuality.values[filterQuality ?? 1],
        repeat: ImageRepeat.values[repeat ?? 3],
        colorFilter: _colorFilter[colorFilter]);
  }

  factory UIDecorationImage.fromJson(Map<String, dynamic> json) {
    var wid = _$UIDecorationImageFromJson(json);
    wid._opacityController.text = wid.opacity != null ? '${wid.opacity}' : '';
    wid._scaleController.text = wid.scale != null ? '${wid.scale}' : '';
    return wid;
  }

  Map<String, dynamic> toJson() {
    return _$UIDecorationImageToJson(this);
  }
}
