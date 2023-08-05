import 'package:execution_engine/Execution/gallery/custom_widgets/ui_input_decoration.dart';
import 'package:execution_engine/Execution/gallery/custom_widgets/ui_text_style.dart';
import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'ui_dropdown.g.dart';

class UIDropDown extends UIWidget {
  List<String> dropDownList = [];
  double? width;
  double? height;
  String? value;
  String inputItem = "";
  int? menuElevation;
  UIInputDecoration? decoration;
  UITextStyle? textStyle;

  initialize() {
    class_name = 'UIDropDown';
    decoration ??= UIInputDecoration();
    textStyle ??= UITextStyle();
    menuElevation ??= 2;
    width ??= 180;
    height ??= 50;
  }

  UIDropDown({Key? key}) : super(key: key, isContainer: false, hasChildren: false, hasChild: false) {
    initialize();
  }

  UIDropDown.name({Key? key}) : super(key: key, isContainer: false, hasChildren: false, hasChild: false) {
    initialize();
  }

  final TextEditingController _valueController = TextEditingController(text: "");
  final TextEditingController _menuElevationController = TextEditingController(text: "2");
  final TextEditingController _heightController = TextEditingController(text: "50");
  final TextEditingController _widthController = TextEditingController(text: "180");

  final _isOpen = List<bool>.filled(5, false);

  Map<String, dynamic> toJson() {
    var json = _$UIDropDownToJson(this);
    return json;
  }

  factory UIDropDown.fromJson(Map<String, dynamic> json) {
    var wid = _$UIDropDownFromJson(json);
    wid._heightController.text = wid.height != null ? '${wid.height}' : '50';
    wid._widthController.text = wid.width != null ? '${wid.width}' : '180';
    wid._menuElevationController.text = wid.menuElevation != null ? '${wid.menuElevation}' : '2';
    wid._valueController.text = '';
    return wid;
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = Container(
      key: widgetKey,
      width: width ?? 180,
      height: height ?? 50,
      child: DropdownButtonFormField(
        isExpanded: true,
        elevation: menuElevation ?? 2,
        decoration: decoration != null ? decoration!.property() : null,
        value: value,
        style: textStyle != null ? textStyle!.property() : null,
        items: dropDownList.map((String e) {
          return DropdownMenuItem<String>(
            alignment: Alignment.centerLeft,
            value: e,
            child: Text(
              e,
              overflow: TextOverflow.clip,
              softWrap: true,
            ),
          );
        }).toList(),
        onChanged: (String? newValue) {
          value = newValue!;
          // BlocProvider.of<SiteBuilderBloc>(GlobalVariable.ctx!).add(RefreshWidgetEvent(target: this));
        },
      ),
    );

    return widget;
  }
}
