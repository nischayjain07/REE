import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_annotation/json_annotation.dart';

part 'margin.g.dart';

@JsonSerializable(explicitToJson: true)
class UIMargin {
  @JsonKey(includeFromJson: false, includeToJson: false)
  UIWidget? widget;
  double? initMargin = 0;

  bool marginLock = false;

  double left = 0;
  double top = 0;
  double right = 0;
  double bottom = 0;

  UIMargin({this.initMargin = 0, this.widget}) {
    if (initMargin != null && initMargin!.isFinite) {
      left = top = right = bottom = initMargin!;
      marginB_controller.text =
          marginT_controller.text = marginR_controller.text = marginL_controller.text = "$initMargin";
    }
  }

  final TextEditingController marginL_controller = TextEditingController(text: "0");
  final TextEditingController marginR_controller = TextEditingController(text: "0");
  final TextEditingController marginT_controller = TextEditingController(text: "0");
  final TextEditingController marginB_controller = TextEditingController(text: "0");

  factory UIMargin.fromJson(Map<String, dynamic> json) {
    var wid = _$UIMarginFromJson(json);
    wid.marginL_controller.text = '${wid.left}';
    wid.marginT_controller.text = '${wid.right}';
    wid.marginR_controller.text = '${wid.top}';
    wid.marginB_controller.text = '${wid.bottom}';
    return wid;
  }

  Map<String, dynamic> toJson() => _$UIMarginToJson(this);

  Widget _marginWidgets(String side, TextEditingController controller) {
    return SizedBox(
      width: 10,
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        clipBehavior: Clip.none,
        decoration: InputDecoration(
          hintText: side,
          border: InputBorder.none,
        ),
        style: const TextStyle(fontSize: 14),
        textAlign: TextAlign.center,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'(^\d*\.?\d*[0-9]+\d*$)|(^[0-9]+\d*\.\d*$)')),
        ],
        onChanged: (newValue) {
          if (marginLock == false) {
            side == 'L'
                ? left = double.parse(newValue)
                : side == 'T'
                    ? top = double.parse(newValue)
                    : side == 'R'
                        ? right = double.parse(newValue)
                        : side == 'B'
                            ? bottom = double.parse(newValue)
                            : 0;

            // marginList[i] = double.parse(newValue);
          } else {
            left = top = right = bottom = double.parse(newValue == '' ? '0' : newValue);
            marginL_controller.text =
                marginR_controller.text = marginT_controller.text = marginB_controller.text = newValue;
          }
        },
      ),
    );
  }

  //returns thr frontend part of margin
  Widget margin() {
    return Column(
      children: [
        const Text(
          'Margin',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 16.0),
        ),
        const SizedBox(height: 4),
        Container(
          width: 150,
          height: 150,
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _marginWidgets('T', marginT_controller),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _marginWidgets('L', marginL_controller),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {
                        marginLock = !marginLock;
                      },
                      icon: const Icon(Icons.lock),
                      color: marginLock == true ? Colors.red : Colors.black,
                    ),
                  ),
                  _marginWidgets('R', marginR_controller),
                ],
              ),
              _marginWidgets('B', marginB_controller),
            ],
          ),
        ),
      ],
    );
  }
}
