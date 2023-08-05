import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fontStyle.g.dart';
@JsonSerializable()
class UIFontStyle{
  final UIWidget wid;
  UIFontStyle({required this.wid});
  final parameter = List<int>.filled(1,FontWeight.normal.index);
  String _showFontWeight = "400-Normal";
  final List<String> _fontWeightValues =["100-Thin","200-Extra light","300-Light","400-Normal","500-Medium",
    "600-Semi Bold","700-Bold","800-Extra Bold","900-Black"];
  factory UIFontStyle.fromJson(Map<String, dynamic> json) => _$UIFontStyleFromJson(json);
  Map<String, dynamic> toJson() => _$UIFontStyleToJson(this);
  Widget showFontStyle(){
    return Expanded(
      flex: 2,
      child: Container(
        padding: const EdgeInsets.all(5),
        child: DropdownButtonFormField<String>(
            value: _showFontWeight,
            decoration: const InputDecoration(
              label: Text("Font Weight", style: TextStyle(fontSize: 15)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
            ),
            items: _fontWeightValues.map((e) {
              return DropdownMenuItem( value: e, child: Text(e));
            }).toList(),
            onChanged: (changedValue) {
              _showFontWeight = changedValue!;
              parameter[0] = FontWeight.values[_fontWeightValues.indexOf(_showFontWeight)].index;
            }),
      ),
    );
  }
}