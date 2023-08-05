import 'package:execution_engine/Execution/gallery/components/padding.dart';
import 'package:execution_engine/Execution/gallery/ui_icon.dart';
import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ui_icon_button.g.dart';

@JsonSerializable(explicitToJson: true)
class UIIconButton extends UIWidget {
  String class_name = 'UIIcon';

  UIIcon? icon;
  void Function()? onPressed;
  String linkedPage = '';
  UIPadding? padding;
  int? hoverColor = Colors.grey.value;
  int? focusColor = Colors.grey.value;
  final _isOpen = List<bool>.filled(1, false);

  UIIconButton({Key? key, this.icon}) : super(key: key, hasChildren: false, isContainer: false, hasChild: false) {
    class_name = "UIIconButton";
    padding = UIPadding(initPadding: 2, widget: this);
    icon ??= UIIcon();
    onPressed ??= () {};
  }

  UIIconButton.name({Key? key, this.icon}) : super(key: key, hasChildren: false, isContainer: false, hasChild: false) {
    class_name = "UIIconButton";
    padding = UIPadding(initPadding: 2, widget: this);
    icon ??= UIIcon();
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = Container(
      key: widgetKey,
      width: icon!.iconSize != null ? icon!.iconSize! + 4 : 24,
      height: icon!.iconSize != null ? icon!.iconSize! + 4 : 24,
      child: IconButton(
        onPressed: onPressed,
        icon: icon!.widget(),
        padding: EdgeInsets.fromLTRB(padding!.left, padding!.top, padding!.right, padding!.bottom),
        hoverColor: hoverColor == null ? null : Color(hoverColor!),
        focusColor: focusColor == null ? null : Color(focusColor!),
      ),
    );

    return widget;
  }

  factory UIIconButton.fromJson(Map<String, dynamic> json) {
    var wid = _$UIIconButtonFromJson(json);
    if (wid.linkedPage != '') {
      // for (var i = 0; i < GlobalVariable.pageWidgets.length; i++) {
      //   if (GlobalVariable.pageWidgets[i].pageName == wid.linkedPage) {
      //     wid.onPressed = () {
      //       GlobalVariable.currentPage = GlobalVariable.pageWidgets[i];
      //       refreshPage();
      //     };

      //     break;
      //   }
      // }
    }
    return wid;
  }

  Map<String, dynamic> toJson() {
    class_name = "UIIconButton";
    return _$UIIconButtonToJson(this);
  }
}
