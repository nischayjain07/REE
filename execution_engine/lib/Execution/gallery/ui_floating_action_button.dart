
import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ui_floating_action_button.g.dart';

@JsonSerializable(explicitToJson: true)
class UIFloatingActionButton extends UIWidget {
  int bgColor=Colors.white.value;
  int fgColor=Colors.black.value;
  String? tooltip;

  UIFloatingActionButton({Key? key}): super(key: key, isContainer: false, hasChildren: false);

  UIFloatingActionButton.name({Key? key}): super(key: key, isContainer: false, hasChildren: false);

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    return FloatingActionButton(
      onPressed: (){},
      backgroundColor: Color(bgColor),
      foregroundColor: Color(fgColor),
      tooltip: tooltip,
      child: children.isNotEmpty?children[0].widget() : null,
    );
  }

  factory UIFloatingActionButton.fromJson(Map<String,dynamic>json) => _$UIFloatingActionButtonFromJson(json);

  @override
  Map<String, dynamic> toJson(){
    class_name = "UIFloatingActionButton";
    return _$UIFloatingActionButtonToJson(this);
  }

}