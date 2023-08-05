import 'dart:convert';

import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_annotation/json_annotation.dart';


part 'ui_card.g.dart';

@JsonSerializable(explicitToJson: true)
class UICard extends UIWidget {
  int color = Colors.white.value;
  int shadowColor = Colors.grey.value;
  int surfaceTintColor = Colors.pinkAccent.value;
  Clip clipBehavior = Clip.none;
  double elevation = 0;
  bool borderOnForeground = false;
  bool semanticContainer = true;
  bool marginLock = false;
  final marginList = List<double>.filled(4, 1);
  final TextEditingController marginLCont = TextEditingController(text: "0");
  final TextEditingController marginRCont = TextEditingController(text: "0");
  final TextEditingController marginTCont = TextEditingController(text: "0");
  final TextEditingController marginBCont = TextEditingController(text: "0");

  final List<String> _widgetsList = ["Text", "TextField", "Button", "Radio", "CheckBox", "Row", "Column"];

  UICard({Key? key}) : super(key: key, hasChildren: false, isContainer: true, hasChild: true) {
    class_name = "UICard";
  }
  UICard.name({Key? key}) : super(key: key, hasChildren: false, isContainer: true, hasChild: true) {
    class_name = "UICard";
  }
  Widget _marginWidgets(int i, TextEditingController controller, String hint) {
    return SizedBox(
      width: 10,
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        clipBehavior: Clip.none,
        decoration: InputDecoration(
          hintText: hint,
          border: InputBorder.none,
        ),
        style: const TextStyle(fontSize: 14),
        textAlign: TextAlign.center,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        onChanged: (newValue) {
          if (marginLock == false) {
            marginList[i] = double.parse(newValue);
          } else {
            marginList[0] = marginList[1] = marginList[2] = marginList[3] = double.parse(newValue);
            marginLCont.text = marginRCont.text = marginTCont.text = marginBCont.text = newValue;
          }
          // BlocProvider.of<SiteBuilderBloc>(GlobalVariable.ctx!).add(RefreshWidgetEvent(target: this));
        },
      ),
    );
  }

  final _isOpen = List<bool>.filled(2, false);

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = Container(
      constraints: const BoxConstraints(minHeight: 50, minWidth: 50),
      child: Card(
        key: widgetKey,
        color: Color(color),
        shadowColor: Color(shadowColor),
        surfaceTintColor: Color(surfaceTintColor),
        elevation: elevation,
        // ShapeBorder? shape,
        borderOnForeground: borderOnForeground,
        margin: EdgeInsets.fromLTRB(marginList[0], marginList[1], marginList[2], marginList[3]),
        semanticContainer: semanticContainer,
        clipBehavior: clipBehavior,
        child: child != null ? child!.widget(selectedWidget: selectedWidget, hoveredWidget: hoveredWidget) : null,
      ),
    );

    return widget;
  }

  factory UICard.fromJson(Map<String, dynamic> json) {
    var wid = _$UICardFromJson(json);
    return wid;
  }

  Map<String, dynamic> toJson() {
    class_name = "UICard";
    if(child != null && keyValue != null) child?.keyValue = keyValue;
    var json = _$UICardToJson(this);
    return json;
  }
}
