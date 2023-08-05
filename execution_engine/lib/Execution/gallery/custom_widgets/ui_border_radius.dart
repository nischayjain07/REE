import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ui_border_radius.g.dart';

@JsonSerializable(explicitToJson: true)
class UIBorderRadius {
  @JsonKey(includeFromJson: false, includeToJson: false)
  UIWidget? widget;
  String class_name = 'UIBorderRadius';
  double topLeft = 5;
  double topRight = 5;
  double bottomLeft = 5;
  double bottomRight = 5;
  double? radius;
  bool borderRadiusLock = false;

  final TextEditingController radiusBL_controller = TextEditingController(text: "5");
  final TextEditingController radiusTL_controller = TextEditingController(text: "5");
  final TextEditingController radiusBR_controller = TextEditingController(text: "5");
  final TextEditingController radiusTR_controller = TextEditingController(text: "5");

  UIBorderRadius({this.radius, this.widget}) {
    if (radius != null) {
      topLeft = topRight = bottomLeft = bottomRight = radius!;
      radiusBL_controller.text =
          radiusTL_controller.text = radiusBR_controller.text = radiusTR_controller.text = '$radius';
    }
  }

  BorderRadius property() {
    return BorderRadius.only(
        topLeft: Radius.circular(topLeft),
        topRight: Radius.circular(topRight),
        bottomLeft: Radius.circular(bottomLeft),
        bottomRight: Radius.circular(bottomRight));
  }

  factory UIBorderRadius.fromJson(Map<String, dynamic> json) {
    json['children'] = [];
    if (json['class_name'] == null) json['class_name'] = 'UIBorderRadius';
    var wid = _$UIBorderRadiusFromJson(json);
    wid.radiusBL_controller.text = '${wid.bottomLeft}';
    wid.radiusTL_controller.text = '${wid.topLeft}';
    wid.radiusBR_controller.text = '${wid.bottomRight}';
    wid.radiusTR_controller.text = '${wid.topRight}';
    return wid;
  }

  Map<String, dynamic> toJson() {
    return _$UIBorderRadiusToJson(this);
  }

  Widget _controllerWidget(TextEditingController controller, {String hint = ''}) {
    return SizedBox(
      height: 20,
      width: 30,
      child: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          clipBehavior: Clip.none,
          decoration: InputDecoration(
            hintText: hint,
            border: InputBorder.none,
          ),
          style: const TextStyle(fontSize: 14),
          textAlign: TextAlign.center,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'(^\d*\.?\d*[0-9]+\d*$)|(^[0-9]+\d*\.\d*$)')),
          ],
          onChanged: (val) {
            double newVal = double.parse(val);
            if (!borderRadiusLock) {
              if (hint == 'TL') {
                topLeft = newVal;
                radiusTL_controller.text = val;
              } else if (hint == 'BL') {
                bottomLeft = newVal;
                radiusBL_controller.text = val;
              } else if (hint == 'TR') {
                topRight = newVal;
                radiusTR_controller.text = val;
              } else {
                bottomRight = newVal;
                radiusBR_controller.text = val;
              }
            } else {
              topLeft = bottomLeft = topRight = bottomRight = newVal;
              radiusTL_controller.text =
                  radiusBL_controller.text = radiusTR_controller.text = radiusBR_controller.text = val;
            }
            controller.value = controller.value.copyWith(
              selection: TextSelection.fromPosition(
                TextPosition(offset: val.length),
              ),
            );
          }),
    );
  }

  Widget borderRadius() {
    return Container(
        child: Container(
      height: 80,
      child: Center(
          child: Row(
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            _controllerWidget(radiusTL_controller, hint: 'TL'),
            _controllerWidget(radiusBL_controller, hint: 'BL'),
          ]),
          Stack(children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)),
              ),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              child: Center(
                child: IconButton(
                  onPressed: () {
                    borderRadiusLock = !borderRadiusLock;
                  },
                  icon: const Icon(Icons.lock),
                  color: borderRadiusLock == true ? Colors.red : Colors.black,
                ),
              ),
            ),
          ]),
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            _controllerWidget(radiusTR_controller, hint: 'TR'),
            _controllerWidget(radiusBR_controller, hint: 'BR'),
          ])
        ],
      )),
    ));
  }

  String? generateCode() {
    if (topLeft == topRight && topRight == bottomLeft && bottomLeft == bottomRight) {
      return '''
        BorderRadius.all(Radius.circular($topLeft))
      ''';
    } else {
      return '''BorderRadius.only(
        topLeft: Radius.circular($topLeft),
        topRight: Radius.circular($topRight),
        bottomLeft: Radius.circular($bottomLeft),
        bottomRight: Radius.circular($bottomRight))''';
    }
  }
}
