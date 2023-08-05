import 'dart:convert';

import 'package:execution_engine/Execution/gallery/custom_widgets/ui_border_radius.dart';
import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
part 'ui_text_button.g.dart';

Map<String, String> _textButtonEvents = {
  "onPressed": "loginPageState.isLoginDisabled ? null : loginPageState.loginOnTap;"
};

class EventObj {
  String eventType;
  String? eventContent;
  String? navigateToPage;
  EventObj(this.eventType, this.eventContent, {this.navigateToPage});
}

class UITextButton extends UIWidget {
  String? value = 'Default Text';
  int textAlign = TextAlign.left.index;
  var color = 0xFF000000;
  var foregroundColor = 0xFFFFFFFF;
  var backgroundColor = 0xFF2196F3;
  var buttonText = 'Button Text';
  double fontSize = 18;
  double padding = 5;
  UIBorderRadius? borderRadius;

  int fontStyle = FontWeight.normal.index;

  String? textInputType;

  final TextEditingController _buttonTextController = TextEditingController(text: 'Button Text');
  final TextEditingController _paddingController = TextEditingController(text: '5');
  final TextEditingController _fontSizeController = TextEditingController(text: '18');
  final _textAlignIcons = List<bool>.filled(4, false);
  final TextEditingController textfieldEventController = TextEditingController(text: '');

  bool hasEvents = false;
  String? onPressedEventText;
  String? onHoverEventText;
  void Function()? onPressed;
  String linkedPage = '';

  List<EventObj>? events = [];
  EventObj? _currentEventType;
  int? gsiIndex;
  var betList;

  UITextButton({Key? key}) : super(key: key, hasChildren: false, isContainer: true, hasChild: true) {
    class_name = "UITextButton";
    onPressed ??= () {};
    borderRadius ??= UIBorderRadius();
  }

  UITextButton.name({Key? key}) : super(key: key, hasChildren: false, isContainer: true, hasChild: true) {
    class_name = 'UITextButton  ';
    onPressed ??= () {};
    borderRadius ??= UIBorderRadius();
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    if (child != null) (child!.keyValue = keyValue);
    Widget widget = Container(
      key: widgetKey,
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Color(foregroundColor),
          backgroundColor: Color(backgroundColor),
          padding: EdgeInsets.all(padding),
          textStyle: TextStyle(fontSize: fontSize),
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius == null ? BorderRadius.zero : borderRadius!.property(),
          ),
        ),
        onPressed: onPressed,
        child: child != null
            ? child!.widget(selectedWidget: selectedWidget, hoveredWidget: hoveredWidget)
            : Text(buttonText),
      ),
    );
    return widget;
  }

  // @override
  // void executeGSI({required int gsiIndex}) async {
  //   // TODO: implement executeGSI
  //   // getGsiName();
  //   GlobalVariable.setGsiIndex(gsiIndex);
  //   GlobalVariable.setCuIndex(0);
  //   // GlobalVariable.currentPage = UIScaffold.name(key: UniqueKey(), pageName: gsiId);
  //   // GlobalVariable.currentPage = GlobalVariable.pageWidgets[i];
  // }

  factory UITextButton.fromJson(Map<String, dynamic> json) {
    var wid = _$UITextButtonFromJson(json);
    if (wid.gsiIndex != null) {
      wid.onPressed = () {
        // executeGsi();
      };
    } else if (wid.linkedPage != '') {
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
    class_name = "UITextButton";
    var wid = _$UITextButtonToJson(this);
    return wid;
  }
}
