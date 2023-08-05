// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_input_decoration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIInputDecoration _$UIInputDecorationFromJson(Map<String, dynamic> json) => UIInputDecoration()
  ..class_name = json['class_name'] as String
  ..alignLabelWithHint = json['alignLabelWithHint'] as bool?
  ..border = json['border'] == null ? null : UIOutlineInputBorder.fromJson(json['border'] as Map<String, dynamic>)
  ..constraints =
      json['constraints'] == null ? null : UIBoxConstraints.fromJson(json['constraints'] as Map<String, dynamic>)
  ..contentPadding = UIPadding.fromJson(json['contentPadding'] as Map<String, dynamic>)
  // ..counterStyle =
  //     json['counterStyle'] == null ? null : UITextStyle.fromJson(json['counterStyle'] as Map<String, dynamic>)
  // ..counterText = json['counterText'] as String?
  // ..counter = json['counter'] == null ? null : UIWidget.fromJson(json['counter'] as Map<String, dynamic>)
  ..enabled = json['enabled'] as bool?
  ..enabledBorder = json['enabledBorder'] == null
      ? null
      : UIOutlineInputBorder.fromJson(json['enabledBorder'] as Map<String, dynamic>)
  ..disabledBorder = json['disabledBorder'] == null
      ? null
      : UIOutlineInputBorder.fromJson(json['disabledBorder'] as Map<String, dynamic>)
  ..errorBorder =
      json['errorBorder'] == null ? null : UIOutlineInputBorder.fromJson(json['errorBorder'] as Map<String, dynamic>)
  ..focusedBorder = json['focusedBorder'] == null
      ? null
      : UIOutlineInputBorder.fromJson(json['focusedBorder'] as Map<String, dynamic>)
  // ..focusedErrorBorder = json['focusedErrorBorder'] == null
  //     ? null
  //     : UIOutlineInputBorder.fromJson(json['focusedErrorBorder'] as Map<String, dynamic>)
  // ..errorMaxLines = json['errorMaxLines'] as int?
  // ..errorStyle =
  //     json['errorStyle'] == null ? null : UITextStyle.fromJson(json['errorStyle'] as Map<String, dynamic>)
  // ..errorText = json['errorText'] as String?
  ..fillColor = json['fillColor'] as String?
  ..filled = json['filled'] as bool?
  // ..floatingLabelAlignment = json['floatingLabelAlignment'] as String?
  // ..floatingLabelBehavior = json['floatingLabelBehavior'] as String?
  // ..floatingLabelStyle = json['floatingLabelStyle'] == null
  //     ? null
  //     : UITextStyle.fromJson(json['floatingLabelStyle'] as Map<String, dynamic>)
  ..focusColor = json['focusColor'] as String?
  // ..helperMaxLines = json['helperMaxLines'] as int?
  // ..helperStyle =
  //     json['helperStyle'] == null ? null : UITextStyle.fromJson(json['helperStyle'] as Map<String, dynamic>)
  // ..helperText = json['helperText'] as String?
  // ..hintMaxLines = json['hintMaxLines'] as int?
  // ..hintTextDirection = json['hintTextDirection'] as String?
  ..hoverColor = json['hoverColor'] as String?
  ..icon = json['icon'] == null ? null : UIWidget.fromJson(json['icon'] as Map<String, dynamic>)
  ..hintText = json['hintText'] as String?
  ..labelText = json['labelText'] as String?
  // ..iconColor = json['iconColor'] as String?
  // ..isCollapsed = json['isCollapsed'] as bool?
  // ..isDense = json['isDense'] as bool?
  // ..label = json['label'] == null ? null : UIWidget.fromJson(json['label'] as Map<String, dynamic>)
  // ..prefix = json['prefix'] == null ? null : UIWidget.fromJson(json['prefix'] as Map<String, dynamic>)
  ..prefixIcon = json['prefixIcon'] == null ? null : UIIconButton.fromJson(json['prefixIcon'] as Map<String, dynamic>)
  // ..prefixIconColor = json['prefixIconColor'] as String?
  // ..prefixIconConstraints = json['prefixIconConstraints'] == null
  //     ? null
  //     : UIBoxConstraints.fromJson(json['prefixIconConstraints'] as Map<String, dynamic>)
  // ..prefixStyle =
  //     json['prefixStyle'] == null ? null : UITextStyle.fromJson(json['prefixStyle'] as Map<String, dynamic>)
  ..prefixText = json['prefixText'] as String?
  // ..semanticCounterText = json['semanticCounterText'] as String?
  // ..suffix = json['suffix'] == null ? null : UIWidget.fromJson(json['suffix'] as Map<String, dynamic>)
  ..suffixIcon = json['suffixIcon'] == null ? null : UIIconButton.fromJson(json['suffixIcon'] as Map<String, dynamic>)
  // ..suffixIconColor = json['suffixIconColor'] as String?
  // ..suffixIconConstraints = json['suffixIconConstraints'] == null
  //     ? null
  //     : UIBoxConstraints.fromJson(json['suffixIconConstraints'] as Map<String, dynamic>)
  // ..suffixStyle =
  //     json['suffixStyle'] == null ? null : UITextStyle.fromJson(json['suffixStyle'] as Map<String, dynamic>)
  ..suffixText = json['suffixText'] as String?
  ..isPrefixIcon = json['isPrefixIcon'] as bool
  ..isPrefixIconPropertyVisible = json['isPrefixIconPropertyVisible'] as bool
  ..isSuffixIcon = json['isSuffixIcon'] as bool
  ..isSuffixIconPropertyVisible = json['isSuffixIconPropertyVisible'] as bool;

Map<String, dynamic> _$UIInputDecorationToJson(UIInputDecoration instance) => <String, dynamic>{
      'class_name': instance.class_name,
      'alignLabelWithHint': instance.alignLabelWithHint,
      'border': instance.border?.toJson(),
      'constraints': instance.constraints?.toJson(),
      'contentPadding': instance.contentPadding?.toJson(),
      // 'counterStyle': instance.counterStyle?.toJson(),
      // 'counterText': instance.counterText,
      // 'counter': instance.counter?.toJson(),
      'enabled': instance.enabled,
      'enabledBorder': instance.enabledBorder?.toJson(),
      'disabledBorder': instance.disabledBorder?.toJson(),
      'errorBorder': instance.errorBorder?.toJson(),
      'focusedBorder': instance.focusedBorder?.toJson(),
      // 'focusedErrorBorder': instance.focusedErrorBorder?.toJson(),
      // 'errorMaxLines': instance.errorMaxLines,
      // 'errorStyle': instance.errorStyle?.toJson(),
      // 'errorText': instance.errorText,
      'fillColor': instance.fillColor,
      'filled': instance.filled,
      // 'floatingLabelAlignment': instance.floatingLabelAlignment,
      // 'floatingLabelBehavior': instance.floatingLabelBehavior,
      // 'floatingLabelStyle': instance.floatingLabelStyle?.toJson(),
      'focusColor': instance.focusColor,
      // 'helperMaxLines': instance.helperMaxLines,
      // 'helperStyle': instance.helperStyle?.toJson(),
      // 'helperText': instance.helperText,
      // 'hintMaxLines': instance.hintMaxLines,
      // 'hintStyle': instance.hintStyle?.toJson(),
      'hintText': instance.hintText,
      // 'hintTextDirection': instance.hintTextDirection,
      'hoverColor': instance.hoverColor,
      'icon': instance.icon?.toJson(),
      // 'iconColor': instance.iconColor,
      // 'isCollapsed': instance.isCollapsed,
      // 'isDense': instance.isDense,
      // 'label': instance.label?.toJson(),
      // 'labelStyle': instance.labelStyle?.toJson(),
      'labelText': instance.labelText,
      // 'prefix': instance.prefix?.toJson(),
      'prefixIcon': instance.prefixIcon?.toJson(),
      // 'prefixIconColor': instance.prefixIconColor,
      // 'prefixIconConstraints': instance.prefixIconConstraints?.toJson(),
      // 'prefixStyle': instance.prefixStyle?.toJson(),
      'prefixText': instance.prefixText,
      // 'semanticCounterText': instance.semanticCounterText,
      // 'suffix': instance.suffix?.toJson(),
      'suffixIcon': instance.suffixIcon?.toJson(),
      // 'suffixIconColor': instance.suffixIconColor,
      // 'suffixIconConstraints': instance.suffixIconConstraints?.toJson(),
      // 'suffixStyle': instance.suffixStyle?.toJson(),
      'suffixText': instance.suffixText,
      'isPrefixIcon': instance.isPrefixIcon,
      'isPrefixIconPropertyVisible': instance.isPrefixIconPropertyVisible,
      'isSuffixIcon': instance.isSuffixIcon,
      'isSuffixIconPropertyVisible': instance.isSuffixIconPropertyVisible
    };
