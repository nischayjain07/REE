import 'package:execution_engine/Execution/gallery/components/padding.dart';
import 'package:execution_engine/Execution/gallery/custom_widgets/ui_box_constraints.dart';
import 'package:execution_engine/Execution/gallery/custom_widgets/ui_outlineinput_border.dart';
import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:execution_engine/Execution/gallery/ui_icon.dart';
import 'package:execution_engine/Execution/gallery/ui_icon_button.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/material.dart';

part 'ui_input_decoration.g.dart';

Map<String, FloatingLabelAlignment> _floatingLabelAlignment = {
  'start': FloatingLabelAlignment.start,
  'center': FloatingLabelAlignment.center
};
var _floatingLabelBehavior = ['always', 'auto', 'never'];
var _hintTextDirection = ['ltr', 'rtl'];

@JsonSerializable(explicitToJson: true)
class UIInputDecoration {
  @JsonKey(includeFromJson: false, includeToJson: false)
  UIWidget? widget;
  String class_name = 'UIInputDecoration';

  // Widget? icon;

  bool? alignLabelWithHint;

  UIOutlineInputBorder? border;
  UIBoxConstraints? constraints;
  UIPadding? contentPadding;

  UITextStyle? counterStyle;
  String? counterText;
  UIWidget? counter;

  bool? enabled;

  UIOutlineInputBorder? enabledBorder;
  UIOutlineInputBorder? disabledBorder;
  UIOutlineInputBorder? errorBorder;
  UIOutlineInputBorder? focusedBorder;
  UIOutlineInputBorder? focusedErrorBorder;

  int? errorMaxLines;
  UITextStyle? errorStyle;
  String? errorText;
  String? fillColor;
  bool? filled = true;

  String? floatingLabelAlignment;
  String? floatingLabelBehavior;
  UITextStyle? floatingLabelStyle;
  String? focusColor;

  int? helperMaxLines;
  UITextStyle? helperStyle;
  String? helperText;

  int? hintMaxLines;
  UITextStyle? hintStyle;
  String? hintText;
  String? hintTextDirection;

  String? hoverColor;
  UIWidget? icon;
  String? iconColor;
  bool? isCollapsed;
  bool? isDense;

  UIWidget? label;
  UITextStyle? labelStyle;
  String? labelText;

  UIWidget? prefix;
  UIIconButton? prefixIcon;
  bool isPrefixIconPropertyVisible = true;
  String? prefixIconColor;
  UIBoxConstraints? prefixIconConstraints;
  UITextStyle? prefixStyle;
  String? prefixText;

  String? semanticCounterText;

  UIWidget? suffix;
  UIIconButton? suffixIcon;
  bool isSuffixIconPropertyVisible = true;
  String? suffixIconColor;
  UIBoxConstraints? suffixIconConstraints;
  UITextStyle? suffixStyle;
  String? suffixText;

  bool? isPrefixIcon;
  bool? isSuffixIcon;

  UIInputDecoration({this.widget}) {
    enabled ??= true;
    filled ??= true;
    labelStyle ??= labelStyle ??
        UITextStyle(
            color: '0xFF9E9E9E', //Colors.grey
            fontSize: 12);
    border ??= UIOutlineInputBorder(isOutlineBorder: false, labelText: 'Border', borderRadius: 10);
    enabledBorder ??=
        UIOutlineInputBorder(borderSideWidth: 1, isOutlineBorder: true, labelText: 'Enabled Border', borderRadius: 10);
    focusedBorder ??=
        UIOutlineInputBorder(borderSideWidth: 1, isOutlineBorder: true, labelText: 'Focused Border', borderRadius: 10);
    errorBorder ??= UIOutlineInputBorder(isOutlineBorder: false, labelText: 'Error Border', borderRadius: 10);
    disabledBorder ??= UIOutlineInputBorder(
        borderSideWidth: 1,
        isOutlineBorder: false,
        labelText: 'Disabled Border',
        borderRadius: 10,
        borderSideColor: Colors.red.value.toString());
    prefixIcon ??= UIIconButton(icon: UIIcon(iconData: 'clear'));
    suffixIcon ??= UIIconButton(icon: UIIcon(iconData: 'clear'));
    isPrefixIcon ??= isSuffixIcon ??= false;
    contentPadding ??= UIPadding(initPadding: 10);
    constraints ??= UIBoxConstraints(isBoxConstraints: false);
    hintText ??= 'Hint Text';
    labelText = 'Label Text';
  }

  final TextEditingController _hintTextController = TextEditingController(text: 'Hint Text');
  final TextEditingController _labelTextController = TextEditingController(text: 'Label Text');
  final TextEditingController _prefixTextController = TextEditingController(text: '');
  final TextEditingController _suffixTextController = TextEditingController(text: '');

  InputDecoration property() {
    return InputDecoration(
      alignLabelWithHint: alignLabelWithHint,
      // border: border?.property(),
      constraints: constraints?.property(),
      contentPadding:
          EdgeInsets.fromLTRB(contentPadding!.left, contentPadding!.top, contentPadding!.right, contentPadding!.bottom),
      counter: counter?.widget(),
      counterStyle: counterStyle?.property(),
      counterText: counterText,
      disabledBorder: disabledBorder?.property(),
      enabled: enabled!,
      enabledBorder: enabledBorder?.property(),
      errorBorder: errorBorder?.property(),
      focusedBorder: focusedBorder?.property(),
      // focusedErrorBorder: focusedErrorBorder?.property(),
      errorMaxLines: 2,
      // errorStyle: errorStyle?.property(),
      errorText: errorText,
      fillColor: fillColor != null ? Color(int.parse(fillColor!)) : null,
      filled: filled,
      floatingLabelAlignment:
          (floatingLabelAlignment != null ? _floatingLabelAlignment[floatingLabelAlignment!] : null),
      floatingLabelBehavior: floatingLabelBehavior != null
          ? FloatingLabelBehavior.values[_floatingLabelBehavior.indexOf(floatingLabelBehavior!)]
          : null,
      floatingLabelStyle: floatingLabelStyle?.property(),
      focusColor: focusColor != null ? Color(int.parse(focusColor!)) : null,
      helperMaxLines: 2,
      helperStyle: helperStyle?.property(),
      helperText: helperText,
      hintMaxLines: hintMaxLines,
      hintStyle: hintStyle?.property(),
      hintText: hintText,
      hintTextDirection:
          hintTextDirection != null ? TextDirection.values[_hintTextDirection.indexOf(hintTextDirection!)] : null,
      hoverColor: hoverColor != null ? Color(int.parse(hoverColor!)) : null,
      icon: icon?.widget(),
      // iconColor: iconColor != null ? Color(int.parse(iconColor!)) : null,
      isCollapsed: isCollapsed ?? false,
      isDense: isDense,
      label: label?.widget(),
      labelStyle: labelStyle?.property(),
      labelText: labelText,
      // prefix: prefix?.widget(),
      prefixIcon: isPrefixIcon! ? prefixIcon?.widget() : null,
      // prefixIconColor: prefixIconColor != null ? Color(int.parse(prefixIconColor!)) : null,
      // prefixIconConstraints: prefixIconConstraints?.property(),
      prefixStyle: prefixStyle?.property(),
      prefixText: prefixText,
      semanticCounterText: semanticCounterText,
      // suffix: suffix?.widget(),
      suffixIcon: isSuffixIcon! ? suffixIcon?.widget() : null,
      // suffixIconColor: suffixIconColor != null ? Color(int.parse(suffixIconColor!)) : null,
      // suffixIconConstraints: suffixIconConstraints?.property(),
      suffixStyle: suffixStyle?.property(),
      suffixText: suffixText,
    );
  }


  static UIInputDecoration fromJson(Map<String, dynamic> json) {
    var wid = _$UIInputDecorationFromJson(json);
    wid._hintTextController.text = wid.hintText != null ? '${wid.hintText}' : 'Hint Text';
    wid._labelTextController.text = wid.labelText != null ? '${wid.labelText}' : 'Label Text';
    wid._prefixTextController.text = wid.prefixText != null ? '${wid.prefixText}' : '';
    wid._suffixTextController.text = wid.suffixText != null ? '${wid.suffixText}' : '';
    return wid;
  }

  Map<String, dynamic> toJson() {
    class_name = "UIInputDecoration";
    return _$UIInputDecorationToJson(this);
  }

}
