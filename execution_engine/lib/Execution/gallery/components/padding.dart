import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_annotation/json_annotation.dart';

part 'padding.g.dart';

@JsonSerializable(explicitToJson: true)
class UIPadding {
  @JsonKey(includeFromJson: false, includeToJson: false)
  UIWidget? widget;
  double? initPadding = 0;

  bool paddingLock = false;

  double left = 0;
  double top = 0;
  double right = 0;
  double bottom = 0;

  UIPadding({this.initPadding = 0, this.widget}) {
    if (initPadding != null && initPadding!.isFinite) {
      left = top = right = bottom = initPadding!;
      paddingB_controller.text =
          paddingT_controller.text = paddingR_controller.text = paddingL_controller.text = "$initPadding";
    }
  }

  final TextEditingController paddingL_controller = TextEditingController(text: "0");
  final TextEditingController paddingR_controller = TextEditingController(text: "0");
  final TextEditingController paddingT_controller = TextEditingController(text: "0");
  final TextEditingController paddingB_controller = TextEditingController(text: "0");

  factory UIPadding.fromJson(Map<String, dynamic> json) {
    var wid = _$UIPaddingFromJson(json);
    wid.paddingL_controller.text = '${wid.left}';
    wid.paddingT_controller.text = '${wid.right}';
    wid.paddingR_controller.text = '${wid.top}';
    wid.paddingB_controller.text = '${wid.bottom}';
    return wid;
  }

  Map<String, dynamic> toJson() => _$UIPaddingToJson(this);

  Widget _paddingWidgets(String side, TextEditingController controller) {
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
          if (paddingLock == false) {
            side == 'L'
                ? left = double.parse(newValue)
                : side == 'T'
                    ? top = double.parse(newValue)
                    : side == 'R'
                        ? right = double.parse(newValue)
                        : side == 'B'
                            ? bottom = double.parse(newValue)
                            : 0;

            // paddingList[i] = double.parse(newValue);
          } else {
            left = top = right = bottom = double.parse(newValue == '' ? '0' : newValue);
            paddingL_controller.text =
                paddingR_controller.text = paddingT_controller.text = paddingB_controller.text = newValue;
          }
        },
      ),
    );
  }

  //returns thr frontend part of padding
  Widget padding() {
    return Column(
      children: [
        const Text(
          'Padding',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 16.0),
        ),
        const SizedBox(height: 4),
        Container(
          width: 150,
          height: 150,
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _paddingWidgets('T', paddingT_controller),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _paddingWidgets('L', paddingL_controller),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {
                        paddingLock = !paddingLock;
                      },
                      icon: const Icon(Icons.lock),
                      color: paddingLock == true ? Colors.red : Colors.black,
                    ),
                  ),
                  _paddingWidgets('R', paddingR_controller),
                ],
              ),
              _paddingWidgets('B', paddingB_controller),
            ],
          ),
        ),
      ],
    );
  }
}
