import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';


part 'textField.g.dart';
@JsonSerializable()
class UITextField0{
  final UIWidget wid;
  final String defaultValue;
  UITextField0({required this.wid,required this.defaultValue});
  final parameter = List<String>.filled(1,'Enter Text');
  final TextEditingController controller = TextEditingController();
  factory UITextField0.fromJson(Map<String, dynamic> json) => _$UITextField0FromJson(json);
  Map<String, dynamic> toJson() => _$UITextField0ToJson(this);
  Widget textField(){
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
        label: Text('Text'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
      ),
      keyboardType: TextInputType.text,
      style: const TextStyle(fontSize: 16),
      onChanged: (changeValue) {
        parameter[0] = changeValue;
      },
    );
  }
}