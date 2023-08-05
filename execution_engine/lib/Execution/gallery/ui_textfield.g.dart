// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_textfield.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UITextField _$UITextFieldFromJson(Map<String, dynamic> json) => UITextField()
  ..offset = (json['offset'] as num).toDouble()
  ..offset1 = (json['offset1'] as num).toDouble()
  ..size = (json['size'] as num?)?.toDouble()
  ..size1 = (json['size1'] as num?)?.toDouble()
  ..class_name = json['class_name'] as String
  ..children = (json['children'] as List<dynamic>).map((e) => UIWidget.fromJson(e as Map<String, dynamic>)).toList()
  ..child = json['child'] == null ? null : UIWidget.fromJson(json['child'] as Map<String, dynamic>)
  ..textCapitalization = json['textCapitalization'] as String?
  ..textInputType = json['textInputType'] as String?
  ..showCursor = json['showCursor'] as bool
  ..enableSuggestions = json['enableSuggestions'] as bool?
  ..style = json['style'] == null ? null : UITextStyle.fromJson(json['style'] as Map<String, dynamic>)
  ..decoration =
      json['decoration'] == null ? null : UIInputDecoration.fromJson(json['decoration'] as Map<String, dynamic>)
  // ..maxlength = json['maxlength'] as int
  ..fontWeightS = json['fontWeightS'] as int
  ..fontSizeS = (json['fontSizeS'] as num).toDouble()
  ..signedValue = json['signedValue'] as bool
  // ..decimalValue = json['decimalValue'] as bool
  // ..isObscureText = json['isObscureText'] as bool
  ..isNumberField = json['isNumberField'] as bool
  ..color = json['color'] as String;
// ..autocorrect = json['autocorrect'] as bool?
// ..autofillHints = (json['autofillHints'] as List<dynamic>?)?.map((e) => e as String).toList()
// ..autofocus = json['autofocus'] as bool?
// ..buildCounter =
//     json['buildCounter'] == null ? null : UIWidget.fromJson(json['buildCounter'] as Map<String, dynamic>)
// ..clipBehavior = json['clipBehavior'] as String?
// ..cursorColor = json['cursorColor'] as String?
// ..cursorHeight = (json['cursorHeight'] as num?)?.toDouble()
// ..cursorWidth = (json['cursorWidth'] as num?)?.toDouble();

Map<String, dynamic> _$UITextFieldToJson(UITextField instance) => <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'textCapitalization': instance.textCapitalization,
      'textInputType': instance.textInputType,
      'showCursor': instance.showCursor,
      'enableSuggestions': instance.enableSuggestions,
      'style': instance.style?.toJson(),
      'decoration': instance.decoration?.toJson(),
      // 'maxlength': instance.maxlength,
      'fontWeightS': instance.fontWeightS,
      'fontSizeS': instance.fontSizeS,
      'signedValue': instance.signedValue,
      // 'decimalValue': instance.decimalValue,
      // 'isObscureText': instance.isObscureText,
      'isNumberField': instance.isNumberField,
      'color': instance.color,
      // 'autocorrect': instance.autocorrect,
      // 'autofillHints': instance.autofillHints,
      // 'autofocus': instance.autofocus,
      // 'buildCounter': instance.buildCounter?.toJson(),
      // 'clipBehavior': instance.clipBehavior,
      // 'cursorColor': instance.cursorColor,
      // 'cursorHeight': instance.cursorHeight,
      // 'cursorWidth': instance.cursorWidth,
    };
