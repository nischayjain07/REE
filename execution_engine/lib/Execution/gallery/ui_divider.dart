import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_annotation/json_annotation.dart';
part 'ui_divider.g.dart';

@JsonSerializable(explicitToJson: true)
class UIDivider extends UIWidget {
  String? value = 'Default Text';
  double fontSize = 12;
  var color = 0xFF000000;
  double thickness = 3;
  double height = 1;
  double indent = 0;
  double endIndent = 0;
  int? indexWherePlaced; // only for root divider
  bool? replaceError; // only for divider

  final TextEditingController _thicknessController = TextEditingController(text: '0');
  final TextEditingController _heightController = TextEditingController(text: '1');
  final TextEditingController _indentController = TextEditingController(text: '0');
  final TextEditingController _endIndentController = TextEditingController(text: '0');

  final _textAlignIcons = List<bool>.filled(4, false);

  UIDivider({Key? key}) : super(key: key, isContainer: false, hasChildren: false, hasChild: false) {
    class_name = "UIDivider";
  }

  UIDivider.name({Key? key}) : super(key: key, isContainer: false, hasChildren: false, hasChild: false) {
    class_name = "UIDivider";
  }

  factory UIDivider.fromJson(Map<String, dynamic> json) => _$UIDividerFromJson(json);

  Map<String, dynamic> toJson() {
    class_name = "UIDivider";
    return _$UIDividerToJson(this);
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = Divider(
      key: widgetKey,
      color: Color(color),
      thickness: thickness,
      height: height,
      indent: indent,
      endIndent: endIndent,
    );
    return widget;
  }
}
