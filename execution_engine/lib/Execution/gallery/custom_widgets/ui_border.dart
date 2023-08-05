import 'package:execution_engine/Execution/gallery/custom_widgets/ui_border_side.dart';
import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ui_border.g.dart';

@JsonSerializable(explicitToJson: true)
class UIBorder {
  @JsonKey(includeFromJson: false, includeToJson: false)
  UIWidget? widget;
  String class_name = 'UIBorder';
  UIBorderSide? all;
  UIBorderSide? top; //.property() as UIBorderSide;
  UIBorderSide? right; //.property() as UIBorderSide;
  UIBorderSide? bottom; //.property() as UIBorderSide;
  UIBorderSide? left; //.property() as UIBorderSide;

  TextEditingController _widthController = TextEditingController();
  TextEditingController _strokeController = TextEditingController();
  UIBorder({this.widget}) {
    all = UIBorderSide.none('None', 1, widget: widget);
    top = UIBorderSide.none('None', 1, widget: widget);
    right = UIBorderSide.none('None', 1, widget: widget);
    bottom = UIBorderSide.none('None', 1, widget: widget);
    left = UIBorderSide.none('None', 1, widget: widget);
  }

  BoxBorder? property() {
    return Border.all(
        color: Color(all!.color),
        width: all!.width,
        style: all!.style == 'solid' ? BorderStyle.solid : BorderStyle.none);
  }

  Widget inputWidget(TextEditingController controller, {String labelText = '', String hintText = ''}) {
    return TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        clipBehavior: Clip.none,
        decoration: InputDecoration(
          filled: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
          fillColor: const Color.fromARGB(207, 218, 215, 215),
          label: Text(labelText, style: const TextStyle(fontSize: 14, color: Colors.black)),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[200]),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
        ),
        style: const TextStyle(fontSize: 14),
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'(^\d*\.?\d*[0-9]+\d*$)|(^[0-9]+\d*\.\d*$)')),
        ],
        onChanged: (val) {
          double newVal = double.parse(val);
          if (labelText == 'Width') {
            all!.width = newVal;
          } else {
            all!.strokeAlign = newVal;
          }

        });
  }

  Widget border() {
    return Container(
        height: 150,
        width: 220,
        child: Row(
          children: [
            Expanded(
              child: Column(children: [
                Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 95,
                          child: inputWidget(_widthController, hintText: 'In pixels', labelText: 'Width'),
                        )
                      ]),
                ),
              ]),
            ),
            Expanded(
                child: Column(children: [
              Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 40,
                          width: 95,
                          child: inputWidget(_strokeController, hintText: 'In pixels', labelText: 'Stroke'))
                    ]),
              ),
              Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              onChanged: (val) {
                                all!.style = val! ? 'solid' : 'None';
                              },
                              value: all!.style == 'solid' ? true : false),
                          SizedBox(width: 10),
                          Text('Solid')
                        ],
                      )
                    ]),
              )
            ]))
          ],
        ));
  }

  factory UIBorder.fromJson(Map<String, dynamic> json) {
    return _$UIBorderFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UIBorderToJson(this);
  }
}
