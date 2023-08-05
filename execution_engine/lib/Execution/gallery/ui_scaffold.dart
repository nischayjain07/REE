import 'package:execution_engine/Execution/gallery/ui_VerticalDivider.dart';
import 'package:execution_engine/Execution/gallery/ui_appbar.dart';
import 'package:execution_engine/Execution/gallery/ui_bottom_navigation_bar.dart';
import 'package:execution_engine/Execution/gallery/ui_divider.dart';
import 'package:execution_engine/Execution/gallery/ui_listview.dart';
import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';

part 'ui_scaffold.g.dart';

class UIScaffold extends UIWidget {
  bool? isAppBar = true;
  UIAppBar appBar = UIAppBar(key: UniqueKey());
  //UIWidget body = UIListView();
  int backgroundColor = Colors.white.value;
  UIBottomNavigationBar? bottomNavigationBar;
  //UIWidget? bottomSheet;
  UIWidget? drawer;
  UIWidget? floatingActionButton;

  bool floatingButtonSwitchValue = false;
  bool bottomNavigationBarSwitchValue = false;
  bool drawerSwitchValue = false;

  // Draggability widgets
  UIDivider? divider; // Divider to show where a widget is to be dropped (root access only)
  UIVerticalDivider? verticalDivider; // Vertical Divider to show where a widget is to be dropped (root access only)
  List<double>? coordinatesAndGeometryForDivider =
      []; // height, width and position of divider to be placed (root access only)
  UIWidget? hoverWidget; // Current hovered widget in the tree (yellow highlight) (root access only)
  UIWidget? selectedWidget; // Current selected widget in the tree (yellow highlight) (root access only)
  bool isAnyWidgetBeingDragged = false; // if a widget is being dragged in the tree or not (root access only)
  UIWidget? parentOfWidgetBeforeDragged;
  int? indexOfWidgetBeforeDragged;

  late String pageName;

  UIScaffold({Key? key}) : super(key: key, isContainer: true, hasChildren: true, hasChild: false) {
    //children.add(UIListView(key: UniqueKey()));

    // children.add(UIListView.name());
    class_name = "UIScaffold";
    rootWidget = this;
  }

  // UIScaffold.name({Key? key, required this.pageName})
  //     : super(key: key, isContainer: true, hasChildren: true, hasChild: false) {
  //   //children.add(UIListView(key: UniqueKey()));
  //   class_name = "UIScaffold";
  //   UIListView init = UIListView.name();
  //   divider = UIDivider.name();
  //   verticalDivider = UIVerticalDivider();
  //   divider!.indent = divider!.endIndent = 80;
  //   divider!.color = verticalDivider!.color = 0xFFFF0000;
  //   divider!.thickness = verticalDivider!.thickness = 3;
  //   children.add(init);
  //   rootWidget = this;
  // }

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = Scaffold(
      key: widgetKey,
      appBar: isAppBar! ? appBar.widget(selectedWidget: selectedWidget, hoveredWidget: hoveredWidget) : null,
      body: children.isEmpty
          ? Container()
          : children[0].widget(selectedWidget: selectedWidget, hoveredWidget: hoveredWidget),
      backgroundColor: Color(backgroundColor),
      floatingActionButton: floatingActionButton?.widget(selectedWidget: selectedWidget, hoveredWidget: hoveredWidget),
      bottomNavigationBar: bottomNavigationBar?.widget(selectedWidget: selectedWidget, hoveredWidget: hoveredWidget),
      drawer: drawer?.widget(selectedWidget: selectedWidget, hoveredWidget: hoveredWidget),
      // drawer: UIDrawer(key: UniqueKey()).widget(),
    );
    return widget;
  }

  factory UIScaffold.fromJson(Map<String, dynamic> json) {
    UIScaffold wid = _$UIScaffoldFromJson(json);
    wid.rootWidget = wid;
    wid.parent = null;
    wid.divider = UIDivider.name();
    wid.verticalDivider = UIVerticalDivider();
    wid.divider!.indent = wid.divider!.endIndent = 80;
    wid.divider!.color = wid.verticalDivider!.color = 0xFFFF0000;
    wid.divider!.thickness = wid.verticalDivider!.thickness = 3;

    void assignParentAndRoot(UIScaffold? root, UIWidget? parent, UIWidget widget) {
      widget.rootWidget = root;
      widget.parent = parent;

      if (widget.isContainer) {
        if (widget.isMultiChildWidget(widget)) {
          for (int i = 0; i < widget.children.length; i++) {
            assignParentAndRoot(root, widget, widget.children[i]);
          }
        } else {
          if (widget.hasChildren && widget.children.isNotEmpty) {
            assignParentAndRoot(root, widget, widget.children[0]);
          } else if (widget.hasChild && widget.child != null) {
            assignParentAndRoot(root, widget, widget.child!);
          }
        }
      }
    }

    if (wid.children.isNotEmpty) {
      assignParentAndRoot(wid, wid, wid.children[0]);
    }

    return wid;
  }

  @override
  Map<String, dynamic> toJson() {
    class_name = "UIScaffold";
    var json = _$UIScaffoldToJson(this);
    return json;
  }
}
