import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'switchListTile.g.dart';

@JsonSerializable()
class UISwitchListTile {
  @JsonKey(includeFromJson: false, includeToJson: false)
  UIWidget? widget;
  final String title;
  UISwitchListTile({required this.title, this.isSelected, this.widget}) {
    isSelected ??= false;
  }
  bool? isSelected = false;
  factory UISwitchListTile.fromJson(Map<String, dynamic> json) => _$UISwitchListTileFromJson(json);
  Map<String, dynamic> toJson() => _$UISwitchListTileToJson(this);
  Widget switchTile() {
    return SwitchListTile(
        title: Text(title),
        value: isSelected ?? false,
        onChanged: (bool value) {
          isSelected = !isSelected!;
        });
  }
}
