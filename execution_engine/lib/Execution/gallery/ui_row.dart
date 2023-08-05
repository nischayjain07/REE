import 'package:execution_engine/Execution/gallery/ui_Checkbox.dart';
import 'package:execution_engine/Execution/gallery/ui_carousel.dart';
import 'package:execution_engine/Execution/gallery/ui_list_tile.dart';
import 'package:execution_engine/Execution/gallery/ui_radioListTile.dart';
import 'package:execution_engine/Execution/gallery/ui_textfield.dart';
import 'package:flutter/material.dart';
import 'dynamic_list_of_widget.dart';
import 'ui_padding.dart';
import 'ui_widget.dart';

part 'ui_row.g.dart';

var _mainAxisAlignment = ['start', 'end', 'center', 'spaceBetween', 'spaceAround', 'spaceEvenly'];
var _crossAxisAlignment = [
  'start',
  'end',
  'center',
  'stretch',
  /* 'baseline' */
];

var _mainAxisSize = ['min', 'max'];

class UIRow extends UIWidget {
  String? mainAxisAlignment;
  String? crossAxisAlignment;
  String? mainAxisSize;
  final _isOpen = List<bool>.filled(3, false); //for expansion lists

  // late UIPadding padding; //creating instance of class through constructor
  UIRow({Key? key}) : super(key: key, isContainer: true, hasChildren: true, hasChild: false) {
    class_name = "UIRow";
  }
  UIRow.name({Key? key}) : super(key: key, hasChildren: true, isContainer: true, hasChild: false) {
    class_name = "UIRow";
  }

  final _axisSizeIcons = List<bool>.filled(2, false);
  void _axisSize(int i) {
    mainAxisSize = MainAxisSize.values[i].name;
    _axisSizeIcons.fillRange(0, 2, false);
    _axisSizeIcons[i] = true;
  }

  final _mainAxisIcons = List<bool>.filled(6, false);
  void _mainAxis(int i) {
    mainAxisAlignment = MainAxisAlignment.values[i].name;
    _mainAxisIcons.fillRange(0, 6, false);
    _mainAxisIcons[i] = true;
  }

  final _crossAxisIcons = List<bool>.filled(4, false);

  //responsive validity code
  final _isDeviceNotValid = List<bool>.filled(3, false);


  bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 800;
  bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 800 && MediaQuery.of(context).size.width < 1200;
  bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 1200;

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    List<Widget> newWidgetList = [];

    for (int index = 0; index < children.length; index++) {

      if (children[index] != null) (children[index].keyValue = keyValue);
      if (children[index] is DynamicListOfWidget) {
        newWidgetList.addAll(children[index].widgetList(selectedWidget: selectedWidget, hoveredWidget: hoveredWidget));
      } else {
        Widget widget = children[index].widget(selectedWidget: selectedWidget, hoveredWidget: hoveredWidget);
        newWidgetList.add(children[index] is UITextField ||
                children[index] is UIRadioListTile ||
                children[index] is UICheckBox ||
                children[index] is UIListTile ||
                children[index] is UICarousel
            ? Expanded(
                child: widget,
              )
            : widget);
      }
    }

    //responsive validity code
    // bool is_Mobile = isMobile(GlobalVariable.ctx!);
    // bool is_Tablet = isTablet(GlobalVariable.ctx!);
    // bool is_Desktop = isDesktop(GlobalVariable.ctx!);
    // if ((is_Mobile && _isDeviceNotValid[0]) ||
    //     (is_Tablet && _isDeviceNotValid[1]) ||
    //     (is_Desktop && _isDeviceNotValid[2])) {
    //   return SizedBox(key: widgetKey, height: 0, width: 0);
    // }
    //used sizedBox to enable to add children
    Widget widget = Row(
        key: widgetKey,
        mainAxisAlignment: mainAxisAlignment != null
            ? MainAxisAlignment.values[_mainAxisAlignment.indexOf(mainAxisAlignment!)]
            : MainAxisAlignment.start,
        crossAxisAlignment: crossAxisAlignment != null
            ? CrossAxisAlignment.values[_crossAxisAlignment.indexOf(crossAxisAlignment!)]
            : CrossAxisAlignment.center,
        mainAxisSize:
            mainAxisSize != null ? MainAxisSize.values[_mainAxisSize.indexOf(mainAxisSize!)] : MainAxisSize.max,
        children:newWidgetList
        //for(UIWidget e in children) e.widget(selectedWidget: selectedWidget), also works
        );
    return widget;
  }

  Map<String, dynamic> toJson() {
    return _$UIRowToJson(this);
  }

  static UIRow fromJson(Map<String, dynamic> json) {
    return _$UIRowFromJson(json);
  }
}
