import 'package:execution_engine/Execution/gallery/ui_text.dart';
import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_annotation/json_annotation.dart';
import 'components/padding.dart';

part 'ui_list_tile.g.dart';

@JsonSerializable(explicitToJson: true)
class UIListTile extends UIWidget {
  // Widget? title;
  // Widget? subtitle;
  // Widget? trailing;
  // Widget? leading;
  bool title = true;
  bool subtitle = false;
  bool trailing = false;
  bool leading = false;

  bool dense = false;
  bool enableFeedback = false;
  bool enabled = true;
  bool isThreeLine = false;
  bool selected = false;

  int? tileColor;
  int? textColor;
  int focusColor = Colors.blue.value;
  int hoverColor = Colors.blue.value;
  int? iconColor;
  int? selectedColor;
  int? selectedTileColor;

  //EdgeInsetsGeometry? contentPadding;

  //final contentPadding = List<double>.filled(4, 0);
  // @JsonKey(includeFromJson: false, includeToJson: false,)
  late UIPadding padding;

  double? horizontalTitleGap;
  double? minLeadingWidth;
  double? minVerticalPadding;

  UIListTile({Key? key}) : super(key: key, hasChildren: true, isContainer: true, hasChild: false) {
    class_name = "UIListTile";
  }
  UIListTile.name({Key? key}) : super(key: key, hasChildren: true, isContainer: true, hasChild: false) {
    // TODO: implement name
    //children.add(UIContainer.name());
    class_name = "UIListTile";

    children.add(UIText.name());
    padding = UIPadding(widget: this);
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    List<int> widgetIndexes = getWidgetIndex();
    Widget widget = ListTile(
      key: widgetKey,
      leading: leading ? children[widgetIndexes[0]].widget() : null,
      title: title ? children[widgetIndexes[1]].widget() : null,
      subtitle: subtitle ? children[widgetIndexes[2]].widget() : null,
      trailing: trailing ? children[widgetIndexes[3]].widget() : null,
      tileColor: nullCheck(Color.new, tileColor),
      textColor: nullCheck(Color.new, textColor),
      contentPadding: EdgeInsets.fromLTRB(padding.left, padding.top, padding.right, padding.bottom),
      dense: dense,
      focusColor: nullCheck(Color.new, focusColor),
      hoverColor: nullCheck(Color.new, hoverColor), //Color(hoverColor),
      horizontalTitleGap: horizontalTitleGap,
      enableFeedback: enableFeedback,
      enabled: enabled,
      iconColor: nullCheck(Color.new, iconColor),
      minLeadingWidth: minLeadingWidth,
      minVerticalPadding: minVerticalPadding,
      selected: selected,
      selectedColor: nullCheck(Color.new, selectedColor),
      selectedTileColor: nullCheck(Color.new, selectedTileColor),
      isThreeLine: isThreeLine,
    );
    return widget;
  }

  dynamic nullCheck(Function func, var value) {
    if (value == null) {
      return null;
    }
    return func(value);
  }

  List<int> getWidgetIndex() {
    // int titleIndex = title ? 0 : -1;
    // int subtitleIndex = titleIndex + (subtitle?1:0);
    // int trailingIndex = subtitleIndex + (trailing ? 1:0);
    // int leadingIndex = trailingIndex + (leading ? 1:0);
    int leadingIndex = leading ? 0 : -1;
    int titleIndex = leadingIndex + (title ? 1 : 0);
    int subtitleIndex = titleIndex + (subtitle ? 1 : 0);
    int trailingIndex = subtitleIndex + (trailing ? 1 : 0);
    return [leadingIndex, titleIndex, subtitleIndex, trailingIndex];
  }

  factory UIListTile.fromJson(Map<String, dynamic> json) => _$UIListTileFromJson(json);

  Map<String, dynamic> toJson() {
    this.class_name = "UIListTile";
    return _$UIListTileToJson(this);
  }
}
