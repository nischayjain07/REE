import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'textAlignContainer.g.dart';

@JsonSerializable()
class UITextAlignContainer {
  @JsonKey(includeFromJson: false, includeToJson: false)
  UIWidget? widget;

  UITextAlignContainer({this.alignment, this.widget}) {
    alignment ??= TextAlign.left.index;
  }

  int? alignment = TextAlign.left.index;
  final _textAlignIcons = List<bool>.filled(4, false);
  factory UITextAlignContainer.fromJson(Map<String, dynamic> json) => _$UITextAlignContainerFromJson(json);
  Map<String, dynamic> toJson() => _$UITextAlignContainerToJson(this);
  void _textAlignFunc(int i) {
    alignment = TextAlign.values[i].index;
    _textAlignIcons.fillRange(0, 4, false);
    _textAlignIcons[i] = true;
  }

  Widget textAlignContainer() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Colors.grey[300],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Tooltip(
              message: "Align Left",
              child: IconButton(
                onPressed: () {
                  _textAlignFunc(0);
                },
                icon: const Icon(Icons.format_align_left),
                color: _textAlignIcons[0] ? Colors.black : Colors.grey,
              )),
          Tooltip(
              message: "Align Right",
              child: IconButton(
                onPressed: () {
                  _textAlignFunc(1);
                },
                icon: const Icon(Icons.format_align_right),
                color: _textAlignIcons[1] ? Colors.black : Colors.grey,
              )),
          Tooltip(
              message: "Align Center",
              child: IconButton(
                onPressed: () {
                  _textAlignFunc(2);
                },
                icon: const Icon(Icons.format_align_center),
                color: _textAlignIcons[2] ? Colors.black : Colors.grey,
              )),
          Tooltip(
              message: "Justify",
              child: IconButton(
                onPressed: () {
                  _textAlignFunc(3);
                },
                icon: const Icon(Icons.format_align_justify),
                color: _textAlignIcons[3] ? Colors.black : Colors.grey,
              )),
        ],
      ),
    );
  }
}
