import 'dart:ui';

import 'package:execution_engine/Execution/gallery/custom_widgets/ui_input_decoration.dart';
import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'custom_widgets/ui_text_style.dart';

part 'ui_textfield.g.dart';

List<String> _clipBehavior = ['antiAlias', 'antiAliasWithSaveLayer', 'hardEdge', 'none'];

List<String> _textCapitalization = ['characters', 'none', 'sentences', 'words'];
List<String> _textInputType = [
  'text',
  'multiline',
  'number',
  'phone',
  'datetime',
  'emailAddress',
  'url',
  'visiblePassword',
  'name',
  'streetAddress',
  'none'
];

Map<String, String> _textFieldOnchange = {
  "Login-Email-Onchange": "loginPageState.storeEmailValue(value);",
  "Login-Password-Onchange": "loginPageState.storePasswordValue(value);",
  "Custom": ""
};

class UITextField extends UIWidget {
  String? textCapitalization;
  String? textInputType;
  bool showCursor = true;
  bool? enableSuggestions;
  UITextStyle? style;
  UIInputDecoration? decoration;
  int maxlength = 12;

  String? OnChangeEventText;

  final _isOpen = List<bool>.filled(6, false);
  String _showFontWeight = "400-Normal"; // Decimal?
  // String _fontWeightValues = "false";
  int fontWeightS = FontWeight.normal.index;

  final TextEditingController textfieldOnchangeController = TextEditingController(text: '');

  double fontSizeS = 10; //
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

  bool signedValue = false;

  bool decimalValue = false;

  bool isObscureText = false;

  bool isNumberField = false;

  String color = '0xFF000000';

  bool? autocorrect;
  List<String>? autofillHints;
  bool? autofocus;
  UIWidget? buildCounter;
  String? clipBehavior;
  String? cursorColor;
  double? cursorHeight;
  double? cursorWidth;

  bool _enableTextfieldOnchange = false;

  String? _onChangeEventType;

  UITextField({Key? key}) : super(key: key, hasChildren: false, isContainer: false, hasChild: false) {
    decoration ??= UIInputDecoration(widget: this);
    style ??= UITextStyle(widget: this);
    class_name = "UITextField";
  }

  UITextField.name({Key? key}) : super(key: key, hasChildren: false, isContainer: false, hasChild: false) {
    decoration ??= UIInputDecoration(widget: this);
    style ??= UITextStyle(widget: this);
    class_name = "UITextField";
  }

  factory UITextField.emailid({Key? key}) {
    var ob = UITextField.name(key: key);
    ob.decoration!.hintText = "Enter Email ID";
    ob.decoration!.labelText = "Email ID";
    ob.OnChangeEventText = '//######EMAILID####';
    return ob;
  }

  factory UITextField.password({Key? key}) {
    var ob = UITextField.name(key: key);

    ob.decoration!.hintText = "Enter Password";
    ob.decoration!.labelText = "Password";
    ob.OnChangeEventText = '//######PASSWORD####';
    return ob;
  }

  factory UITextField.fromJson(Map<String, dynamic> json) => _$UITextFieldFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    class_name = "UITextField";
    return _$UITextFieldToJson(this);
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = FormField(
        key: widgetKey,
        builder: (temp) {
          return TextField(
            focusNode: null,
            keyboardType: textInputType != null ? TextInputType.values[_textInputType.indexOf(textInputType!)] : null,
            autocorrect: autocorrect ?? true,
            autofillHints: autofillHints,
            autofocus: autofocus ?? false,
            clipBehavior: clipBehavior != null ? Clip.values[_clipBehavior.indexOf(clipBehavior!)] : Clip.hardEdge,
            cursorColor: cursorColor != null ? Color(int.parse(cursorColor!)) : null,
            cursorHeight: cursorHeight,
            cursorWidth: cursorWidth ?? 2.0,
            enableSuggestions: enableSuggestions ?? true,
            textCapitalization: textCapitalization != null
                ? TextCapitalization.values[_textCapitalization.indexOf(textCapitalization!)]
                : TextCapitalization.none,
            decoration: decoration?.property(),
            style: style?.property(),
            obscureText: isObscureText,
            showCursor: showCursor,
          );
        });

    return widget;
  }
}
