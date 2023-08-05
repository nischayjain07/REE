import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/components.dart';
import 'gallery.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ui_gridView.g.dart';

@JsonSerializable(explicitToJson: true)
class UIGridView extends UIWidget {
  int scrollDirection = Axis.vertical.index;
  String _showAxis = "Vertical";
  int crossAxisCount = 3;
  double mainAxisSpacing = 0.0;
  double crossAxisSpacing = 0.0;
  double childAspectRatio = 1.0;

  final TextEditingController _countController = TextEditingController(text: '3');
  final TextEditingController _mainSpaceController = TextEditingController(text: '0.0');
  final TextEditingController _crossSpaceController = TextEditingController(text: '0.0');
  final TextEditingController _ratioController = TextEditingController(text: '1.0');

  final _devices = List<bool>.filled(3, true);
  final _isOpen = List<bool>.filled(3, false);

  final List<String> _axisValues = ["Horizontal", "Vertical"];
  final List<int> _axisValues1 = [Axis.horizontal.index, Axis.vertical.index];

  late UIPadding padding;
  late UISwitchListTile reverse;
  late UISwitchListTile shrinkWrap;
  late UISwitchListTile primary;
  // TxnGeneralEntity? txnGeneralEntity;

  UIGridView({Key? key}) : super(key: key, isContainer: true, hasChildren: true, hasChild: false);
  UIGridView.name({Key? key}) : super(key: key, hasChildren: true, isContainer: true, hasChild: false) {
    class_name = 'UIGridView';
    UIPadding x = UIPadding(/* wid: this */);
    UISwitchListTile boolObject1 = UISwitchListTile(title: 'Reverse', widget: this);
    UISwitchListTile boolObject2 = UISwitchListTile(title: 'ShrinkWarp', widget: this);
    UISwitchListTile boolObject3 = UISwitchListTile(title: 'Primary', widget: this);
    padding = x;
    reverse = boolObject1;
    shrinkWrap = boolObject2;
    primary = boolObject3;
  }

  

  factory UIGridView.fromJson(Map<String, dynamic> json) => _$UIGridViewFromJson(json);
  Map<String, dynamic> toJson() => _$UIGridViewToJson(this);

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    // bool isMobile = Responsive.isMobile(GlobalVariable.ctx!);
    // bool isTablet = Responsive.isTablet(GlobalVariable.ctx!);
    // bool isDesktop = Responsive.isDesktop(GlobalVariable.ctx!);

    List<Widget> newWidgetList = getRunTimeWidgetList(selectedWidget, hoveredWidget);

    Widget widget = SizedBox(
      key: widgetKey,
      height: 100,
      child: Padding(
        padding: EdgeInsets.fromLTRB(padding.left, padding.top, padding.right, padding.bottom),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: crossAxisSpacing,
                childAspectRatio: childAspectRatio,
                mainAxisSpacing: mainAxisSpacing),
            reverse: reverse.isSelected ?? false,
            scrollDirection: Axis.values[scrollDirection],
            primary: primary.isSelected,
            shrinkWrap: shrinkWrap.isSelected ?? false,
            itemCount: newWidgetList.length,
            itemBuilder: (context, index) {
              return newWidgetList[index];
            }),
      ),
    );

    if (kDebugMode) {
      // print(selectedWidget);
    }
    if (kDebugMode) {
      // print(this);
    }
    // if ((isMobile && !_devices[0]) || (isTablet && !_devices[1]) || (isDesktop && !_devices[2])) {
    //   return Container(key: widgetKey);
    // }
    return widget;
  }
}
