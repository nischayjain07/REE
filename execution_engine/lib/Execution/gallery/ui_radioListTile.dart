import 'dart:convert';
import 'dart:ui';
import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
part 'ui_radioListTile.g.dart';

class UIRadioListTile extends UIWidget {
  bool selected = false;
  bool toggleable = false;
  bool autofocus = false;
  bool enableFeedback = false;
  bool isThreeLine = false;
  bool paddingLock = false;

  int activeColor = Colors.blueAccent.value;
  int tileColor = Colors.greenAccent.value;
  int selectedTileColor = Colors.pinkAccent.value;
  int titleColor = Colors.black.value;
  int subtitleColor = Colors.black.value;

  final paddingList = List<double>.filled(4, 0);
  final TextEditingController paddingLCont = TextEditingController(text: "0");
  final TextEditingController paddingRCont = TextEditingController(text: "0");
  final TextEditingController paddingTCont = TextEditingController(text: "0");
  final TextEditingController paddingBCont = TextEditingController(text: "0");
  final TextEditingController titleController = TextEditingController();
  final TextEditingController subtitleController = TextEditingController();
  final TextEditingController titleSController = TextEditingController();
  final TextEditingController subtitleSController = TextEditingController();

  // final TextEditingController valueController = TextEditingController();
  // final TextEditingController groupValueController = TextEditingController();
  String title = 'title';
  String subtitle = 'subtitle';
  double titleSize = 14.0;
  double subtitleSize = 11.0;
  int textAlign = TextAlign.left.index;
  int textAlignS = TextAlign.left.index;
  int fontStyle = FontWeight.normal.index;
  int fontStyleS = FontWeight.normal.index;

  String value = 'Value';
  String groupValue = 'Group Value';

  UIRadioListTile({Key? key}) : super(key: key, isContainer: false, hasChildren: false, hasChild: false) {
    class_name = "UIRadioListTile";
  }

  UIRadioListTile.name({
    Key? key,
  }) : super(key: key, isContainer: false, hasChildren: false, hasChild: false) {
    class_name = "UIRadioListTile";
  }

  int titleD = 0;
  int subtitleD = 0;
  int titleD1 = FontStyle.normal.index;
  int subtitleD1 = FontStyle.normal.index;
  bool _underline = false;
  bool _strike = false;
  bool _style = false;
  String _showFontWeight = "400-Normal";
  final List<TextDecoration> _textDecorationValues = [
    TextDecoration.none,
    TextDecoration.underline,
    TextDecoration.lineThrough,
  ];
  final List<String> _fontWeightValues = [
    "100-Thin",
    "200-Extra light",
    "300-Light",
    "400-Normal",
    "500-Medium",
    "600-Semi Bold",
    "700-Bold",
    "800-Extra Bold",
    "900-Black"
  ];
  final _textAlignIcons = List<bool>.filled(4, false);

  final _isOpen = List<bool>.filled(5, false);
  // bool value = true;
  // bool groupValue = true;

  factory UIRadioListTile.fromJson(Map<String, dynamic> json) => _$UIRadioListTileFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    this.class_name = "UIRadioListTile";
    return _$UIRadioListTileToJson(this);
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = RadioListTile(
      key: widgetKey,
      value: value,
      groupValue: groupValue,
      onChanged: (String? val) {
        groupValue = value;
      },
      title: Text(
        title,
        textAlign: TextAlign.values[textAlign],
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontWeight: FontWeight.values[fontStyle],
          fontSize: titleSize,
          color: Color(titleColor),
          decoration: _textDecorationValues[titleD],
          fontStyle: FontStyle.values[titleD1],
        ),
      ),
      subtitle: Text(
        subtitle,
        textAlign: TextAlign.values[textAlignS],
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontWeight: FontWeight.values[fontStyleS],
          fontSize: subtitleSize,
          color: Color(subtitleColor),
          decoration: _textDecorationValues[subtitleD],
          fontStyle: FontStyle.values[subtitleD1],
        ),
      ),
      toggleable: toggleable,
      autofocus: autofocus,
      activeColor: Color(activeColor),
      tileColor: Color(tileColor),
      selectedTileColor: Color(selectedTileColor),
      selected: selected,
      isThreeLine: isThreeLine,
      contentPadding: EdgeInsets.fromLTRB(paddingList[0], paddingList[1], paddingList[2], paddingList[3]),
    );

    return widget;
  }
}
