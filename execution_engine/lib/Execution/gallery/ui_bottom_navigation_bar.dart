import 'dart:async';

import 'package:execution_engine/Execution/gallery/ui_bottom_navigation_bar_item.dart';
import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ui_bottom_navigation_bar.g.dart';

@JsonSerializable(explicitToJson: true)
class UIBottomNavigationBar extends UIWidget {
  final String class_name = "UIBottomNavigationBar";
  int bgColor = Colors.white.value;
  int fgColor = Colors.black.value;
  String? tooltip;
  // List<UIBottomNavigationBarItem> navItems = List.empty(growable: true);

  List<UIBottomNavigationBarItem> navItems = <UIBottomNavigationBarItem>[
    UIBottomNavigationBarItem.name(
        key: UniqueKey(), label: 'Home', iconText: 'Icons.home'),
    UIBottomNavigationBarItem.name(
        key: UniqueKey(), label: 'Settings', iconText: 'Icons.settings'),
  ];

  UIBottomNavigationBar({Key? key})
      : super(key: key, isContainer: true, hasChildren: true) {}

  //@override
  //Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    return BottomNavigationBar(
      onTap: (int index) {},
      type: BottomNavigationBarType.shifting,
      landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
      backgroundColor: Color(bgColor),
      items: navItems.map((e) => e.widget()).toList(),
    );
  }

  factory UIBottomNavigationBar.fromJson(Map<String, dynamic> json) =>
      _$UIBottomNavigationBarFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return _$UIBottomNavigationBarToJson(this);
  }
}
