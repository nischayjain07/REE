import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_annotation/json_annotation.dart';

part 'textField1.g.dart';
@JsonSerializable()
class UITextField1{
  final UIWidget wid;
  final String defaultValue;
  UITextField1({required this.wid,required this.defaultValue});
  final parameter = List<double>.filled(1,15.0);
  final TextEditingController controller = TextEditingController();
  factory UITextField1.fromJson(Map<String, dynamic> json) => _$UITextField1FromJson(json);
  Map<String, dynamic> toJson() => _$UITextField1ToJson(this);
  Widget textField(){
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        label: Text('Font Size', style: TextStyle(fontSize: 15)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
      ),
      style: const TextStyle(fontSize: 15),
      textAlign: TextAlign.left,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'(^\d*\.?\d*[0-9]+\d*$)|(^[0-9]+\d*\.\d*$)')),
        //FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
      ],
      onChanged: (changeSize) {
        parameter[0] = double.parse(changeSize);
      },
    );
  }
}