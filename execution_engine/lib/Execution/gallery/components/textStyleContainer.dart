import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:execution_engine/constants1.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'textStyleContainer.g.dart';

@JsonSerializable()
class UITextStyleContainer {
  @JsonKey(includeFromJson: false, includeToJson: false)
  UIWidget? widget;
  TextDecoration textDecoration = TextDecoration.none;
  int? fontStyle = FontStyle.normal.index;
  bool underline = false;
  bool strike = false;
  bool style = false;

  UITextStyleContainer({this.widget}) {
    fontStyle ??= FontStyle.normal.index;
    if (underline) {
      textDecoration = TextDecoration.underline;
    } else if (strike) {
      textDecoration = TextDecoration.lineThrough;
    }
  }
  factory UITextStyleContainer.fromJson(Map<String, dynamic> json) => _$UITextStyleContainerFromJson(json);
  Map<String, dynamic> toJson() => _$UITextStyleContainerToJson(this);
  Widget textStyleContainer() {
    return Container(
      decoration: KBoxDecoration,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Tooltip(
              message: "Italic",
              child: IconButton(
                onPressed: () {
                  style = !style;
                  fontStyle = style ? FontStyle.italic.index : FontStyle.normal.index;
                },
                icon: const Icon(Icons.format_italic),
                color: style ? Colors.black : Colors.grey,
              )),
          Tooltip(
              message: "Underline",
              child: IconButton(
                onPressed: () {
                  underline = !underline;
                  strike = false;
                  textDecoration = underline ? TextDecoration.underline : TextDecoration.none;
                },
                icon: const Icon(Icons.format_underline),
                color: underline ? Colors.black : Colors.grey,
              )),
          Tooltip(
              message: "Strike Through",
              child: IconButton(
                onPressed: () {
                  strike = !strike;
                  underline = false;
                  textDecoration = strike ? TextDecoration.lineThrough : TextDecoration.none;
                },
                icon: const Icon(Icons.format_strikethrough),
                color: strike ? Colors.black : Colors.grey,
              )),
        ],
      ),
    );
  }
}
