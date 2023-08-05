import 'dart:core';

import 'package:execution_engine/Execution/bloc/execution_bloc.dart';
import 'package:execution_engine/Execution/gallery/custom_widgets/ui_input_decoration.dart';
import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:execution_engine/NSL_Integration/model/constraints_dto.dart';
import 'package:execution_engine/NSL_Integration/model/nsl_attributes.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import '../custom_widgets/ui_text_style.dart';

part 'textfield_ui_control.g.dart';

class UICTextField extends UIWidget {
  UITextStyle? style;
  UIInputDecoration? decoration;

  UICTextField({Key? key}) : super(key: key, hasChildren: false, isContainer: false, hasChild: false) {
    decoration ??= UIInputDecoration(widget: this);
    style ??= UITextStyle(widget: this);
    class_name = "UICTextField";
  }

  UICTextField.name({Key? key, this.nslAttribute})
      : super(key: key, hasChildren: false, isContainer: false, hasChild: false) {
    decoration ??= UIInputDecoration(widget: this);
    style ??= UITextStyle(widget: this);
    class_name = "UICTextField";
  }

  @override
  NslAttributes? nslAttribute;
  List<ConstraintsDTO> allConstraints = [];

  factory UICTextField.fromJson(Map<String, dynamic> json) {
    var wid = _$UICTextFieldFromJson(json);
    wid.nslAttribute = attributeList[wid.nslAttribute?.id!];
    // wid._valueController.text = wid.value != null ? '${wid.value}' : 'Default Text';
    // wid._maxLinesController.text = wid.maxLines != null ? '${wid.maxLines}' : '1';
    return wid;
  }

  Map<String, dynamic> toJson() {
    class_name = "UICTextField";
    var json = _$UICTextFieldToJson(this);
    return json;
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = FormField(
        key: widgetKey,
        builder: (temp) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nslAttribute?.name ?? "",
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 12, 0.0, 12),
                  child: Theme(
                    data: ThemeData(useMaterial3: true),
                    child: TextFormField(
                      // initialValue: nslAttribute?.defaultValue,
                      controller: TextEditingController(text: nslAttribute?.defaultValue),
                      validator: FormBuilderValidators.compose([FormBuilderValidators.required(errorText: '')]),
                      style: TextStyle(fontSize: 14, color: Color(0xFF333333), fontWeight: FontWeight.w400),
                      cursorColor: Color(0xFFFF657D),
                      // textCapitalization: uppercase == StringConstants.trueValue
                      //     ? TextCapitalization.characters
                      //     : TextCapitalization.none,
                      // inputFormatters: uppercase == StringConstants.trueValue
                      //     ? [
                      //         FilteringTextInputFormatter.allow(RegExp("[A-Z0-9@#_&()/*?:;!+-.`'\"| ]*")),
                      //       ]
                      //     : [
                      //         FilteringTextInputFormatter.allow(RegExp("[a-zA-Z0-9@#_&()/*?:;!+-.`'\"| ]*")),
                      //       ],
                      decoration: const InputDecoration(
                        // filled: isDisabled,
                        // fillColor: utils.hexOrRGBToColor(ColorConstants.uiFillColor),
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(16, 11, 16, 11),
                        // label: utils.AttributeName(displayList),
                        errorStyle: TextStyle(fontSize: 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          borderSide: BorderSide(color: Color(0xFFCCCCCC)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          borderSide: BorderSide(color: Color(0xFFFF657D)),
                        ),
                        // suffixIcon: uiControlList[displayList['id']] == UiElementsStringConstants.textUiElement
                        //     ? addDeleteAttribute(
                        //         displayList: displayList,
                        //         attributeMapIndex: attributeMapIndex,
                        //         entityDetails: entityDetails,
                        //         context: context,
                        //         attributeId: displayList['id'].toString(),
                        //         layerType: layerType,
                        //         fbKey: fbKeyList[displayList['entityId']],
                        //         completeDisplayList: completeDisplayList)
                        //     : null,
                      ),
                    ),
                  )),
            ],
          );
        });
    return widget;
  }
}
