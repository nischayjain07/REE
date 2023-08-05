import 'package:execution_engine/Execution/gallery/components/IconsHelper.dart';
import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ui_icon.g.dart';

@JsonSerializable(explicitToJson: true)
class UIIcon extends UIWidget {
  String class_name = 'UIIcon';

  String? iconData;
  double? iconSize;
  int? color;

  UIIcon({
    this.iconData,
    this.iconSize,
    this.color,
  }) : super(hasChildren: false, isContainer: false, hasChild: false) {
    class_name = "UIIcon";
    iconSize ??= 24;
    color ??= Colors.grey.value;
  }

  UIIcon.name({Key? key, this.iconData, this.iconSize, this.color})
      : super(key: key, hasChildren: false, isContainer: false, hasChild: false) {
    class_name = "UIIcon";
    iconSize ??= 24;
    color ??= Colors.grey.value;
  }

  TextEditingController sizeController = TextEditingController(text: '24');

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    return Icon(
      (iconData != null && iconData!.isNotEmpty) ? IconsHelper.iconMap[iconData] : Icons.close,
      size: iconSize ?? 24,
      color: color != null ? Color(color!) : null,
    );
  }

  Map<String, dynamic> toJson() {
    class_name = "UIIcon";
    return _$UIIconToJson(this);
  }

  static UIIcon fromJson(Map<String, dynamic> json) {
    var wid = _$UIIconFromJson(json);
    wid.sizeController.text = wid.iconSize != null ? '${wid.iconSize}' : '24';
    return wid;
  }
}
