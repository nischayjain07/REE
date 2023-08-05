import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import 'components/IconsHelper.dart';

part 'ui_bottom_navigation_bar_item.g.dart';

@JsonSerializable(explicitToJson: true)
class UIBottomNavigationBarItem {
  int bgColor = Colors.white.value;

  String? tooltip;
  String? label;

  final String class_name = "UIBottomNavigationBarItem";
  String iconUrl = '';
  String? activeIconUrl;
  // Widget? icon;
  String? iconText;

  UIBottomNavigationBarItem({Key? key});

  UIBottomNavigationBarItem.name({Key? key, String? label, String? iconText}) {
    this.label = label;
    this.iconText = iconText;
  }

  @override
  BottomNavigationBarItem widget(
      {UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    var iconD = IconsHelper.iconMap[iconText];
    return BottomNavigationBarItem(
      icon: Icon(iconD) ?? Icon(Icons.settings),
      // backgroundColor: Color(bgColor),
      label: label,
      tooltip: tooltip,
      activeIcon: activeIconUrl == null ? null : Image.asset(activeIconUrl!),
    );
  }

  factory UIBottomNavigationBarItem.fromJson(Map<String, dynamic> json) =>
      _$UIBottomNavigationBarItemFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return _$UIBottomNavigationBarItemToJson(this);
  }
}
