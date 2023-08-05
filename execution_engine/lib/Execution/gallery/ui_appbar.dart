import 'package:execution_engine/Execution/gallery/ui_text.dart';
import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ui_appbar.g.dart';

@JsonSerializable(explicitToJson: true)
class UIAppBar extends UIWidget {
  bool automaticallyImplyLeading = false;
  late UIWidget title;

  String? appBarTitle = 'Page Title';
  final TextEditingController _appbarTitleController = TextEditingController(text: 'Page Title');
  String? appBarColor = '0xFF4B39EF';
  String? shadowColor = '0xff000000';
  String? foregroundColor = '0xffffffff';
  bool centerTitle = false;

  // List<UIWidget> actions = List.empty(growable: true);

  UIAppBar({Key? key}) : super(key: key, isContainer: true, hasChildren: true, hasChild: false) {
    var ttl = UIText.name(key: UniqueKey(), text: 'Page Title');
    ttl.textStyle!.fontSize = 22;
    ttl.textStyle!.color = '0xFFFFFFFF';
    title = ttl;
  }

  @override
  PreferredSizeWidget widget({
    UIWidget? selectedWidget,
    UIWidget? hoveredWidget,
  }) {
    return AppBar(
        key: widgetKey,
        title: title.widget(),
        toolbarHeight: 40,
        // leading: Text('data'),

        // title: Text(
        //   appBarTitle!,
        //   style: TextStyle(color: Colors.white, fontSize: 22),
        // ),
        backgroundColor: Color(int.parse(appBarColor!)), //Color(0xFF4B39EF),
        shadowColor: Color(int.parse(shadowColor!)), //Colors.green,
        foregroundColor: Color(int.parse(foregroundColor!)), //Colors.lime,
        centerTitle: centerTitle,
        titleTextStyle: TextStyle(fontFamily: 'Montserrat'),
        automaticallyImplyLeading: automaticallyImplyLeading,
        actions: children.map((e) => e.widget()).toList(),
        // centerTitle: true,
        elevation: 2);
  }

  factory UIAppBar.fromJson(Map<String, dynamic> json) => _$UIAppBarFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    class_name = "UIAppBar";
    return _$UIAppBarToJson(this);
  }
}
