import 'dart:convert';

import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ui_listview.g.dart';

class UIListView extends UIWidget {
  // ScrollPhysics? physics;
  // List<UIWidget> children = List.empty(growable: true);
  bool shrinkWarp = false;
  bool primary = false;
  bool reverse = false;
  bool paddingLock = false;
  final paddingList = List<double>.filled(4, 0);
  final TextEditingController paddingLCont = TextEditingController(text: "0");
  final TextEditingController paddingRCont = TextEditingController(text: "0");
  final TextEditingController paddingTCont = TextEditingController(text: "0");
  final TextEditingController paddingBCont = TextEditingController(text: "0");
  final TextEditingController sliderControllerD = TextEditingController(text: '0');
  final TextEditingController sliderControllerIO = TextEditingController(text: '0');
  final TextEditingController sliderControllerFO = TextEditingController(text: '0');
  final TextEditingController sliderControllerHO = TextEditingController(text: '0');
  final TextEditingController sliderControllerVO = TextEditingController(text: '0');

  UIListView({Key? key}) : super(key: key, hasChildren: true, isContainer: true, hasChild: false) {
    class_name = "UIListView";
  }
  UIListView.name({Key? key}) : super(key: key, hasChildren: true, isContainer: true, hasChild: false) {
    class_name = "UIListView";
  }

  
  double duration = 0;
  double initialOpacity = 0;
  double finalOpacity = 0;
  double initialHOffset = 0;
  double initialVOffset = 0;

  Axis scrollDirection = Axis.vertical;
  String _showAnimationCurve = "Ease In Out";
  final List<String> _animationCurveValues = ["Ease In", "Ease Out", "Ease In Out", "Bounce", "Elastic", "Linear"];
  final List<Curve> _curveList = [
    Curves.easeIn,
    Curves.easeOut,
    Curves.easeInOut,
    Curves.bounceIn,
    Curves.elasticIn,
    Curves.linear
  ];
  int curve = 0;
  double l = 0, r = 0, t = 0, b = 0;

  factory UIListView.fromJson(Map<String, dynamic> json) {
    var temp = _$UIListViewFromJson(json);
    return temp;
  }

  Map<String, dynamic> toJson() {
    class_name = "UIListView";
    return _$UIListViewToJson(this);
  }

  List<bool> values = [true, false];
  final _isOpen = List<bool>.filled(2, false);

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = NotificationListener(
      onNotification: (_) => false,
      child: ListView(
        key: widgetKey,
        reverse: reverse,
        scrollDirection: scrollDirection,
        shrinkWrap: shrinkWarp,
        primary: primary,
        // physics: physics,
        padding: EdgeInsets.fromLTRB(paddingList[0], paddingList[1], paddingList[2], paddingList[3]),
        // padding: EdgeInsets.zero,
        children: children.map((e) => e.widget(selectedWidget: selectedWidget, hoveredWidget: hoveredWidget)).toList(),
      ),
    );
    return widget;
  }
}
