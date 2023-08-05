import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'slider.g.dart';
@JsonSerializable()
class UISlider{
  final UIWidget wid;
  final double min;
  final double max;
  final String title;
  final double defaultValue;
  final int num;
  UISlider({required this.wid,required this.min ,required this.max,required this.title,required this.defaultValue,required this.num});
  final parameter = List<double>.filled(1,0.0);
  factory UISlider.fromJson(Map<String, dynamic> json) => _$UISliderFromJson(json);
  Map<String, dynamic> toJson() => _$UISliderToJson(this);
  final TextEditingController sliderController = TextEditingController(text: '0');
  void setParameter(TextEditingController controller){
    parameter[0] = defaultValue;
    controller.text = defaultValue.toStringAsFixed(num);
  }
  Widget _sliderWidgets0( TextEditingController controller){
    return Slider(
      min : min,
      max: max,
      divisions: 200,
      value: parameter[0],
      label: parameter[0].toStringAsFixed(2),
      onChanged: (double newValue){
        parameter[0] = newValue;
        sliderController.text = parameter[0].toString();
      },
    );
  }
  Widget _sliderWidgets1( TextEditingController controller){
    return SizedBox(
      width: 70.0,
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        style: const TextStyle(fontSize: 16),
        textAlign: TextAlign.center,
        onChanged: (changedValue) {
          parameter[0] = double.parse(changedValue);

        },
      ),
    );
  }
  Widget slider(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w100,),textAlign: TextAlign.left,),
          const SizedBox(height: 3),
          Row(
            children: [
              _sliderWidgets0(sliderController),
              _sliderWidgets1(sliderController),
            ],
          ),
        ],
      ),
    );
  }
}