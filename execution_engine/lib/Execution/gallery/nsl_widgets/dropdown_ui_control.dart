import 'dart:convert';
import 'dart:core';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:execution_engine/Execution/gallery/custom_widgets/ui_input_decoration.dart';
import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:execution_engine/NSL_Integration/model/constraints_dto.dart';
import 'package:execution_engine/NSL_Integration/model/nsl_attributes.dart';
import 'package:execution_engine/NSL_Integration/model/source_values.dart';
import 'package:execution_engine/constants.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../custom_widgets/ui_text_style.dart';

class UICDropdown extends UIWidget {
  UITextStyle? style;
  UIInputDecoration? decoration;

  UICDropdown({Key? key}) : super(key: key, hasChildren: false, isContainer: false, hasChild: false) {
    decoration ??= UIInputDecoration(widget: this);
    style ??= UITextStyle(widget: this);
    class_name = 'UICDropdown';
  }

  UICDropdown.name({Key? key, this.nslAttribute})
      : super(key: key, hasChildren: false, isContainer: false, hasChild: false) {
    decoration ??= UIInputDecoration(widget: this);
    style ??= UITextStyle(widget: this);
    class_name = 'UICDropdown';
  }

  @override
  NslAttributes? nslAttribute;
  List<ConstraintsDTO> allConstraints = [];
  SourceValuesDTO? sourceValuesDTO = SourceValuesDTO();
  List<SourceValuesDTO>? sourceValueList = [];
  List<dynamic> dropdownItems = [];
  dynamic selectedValue;
  final TextEditingController _valueController = TextEditingController(text: "");
  List<String> dropDownList = [];
  String inputItem = '';
  List<String> populateOptionsType = ['Enter Value', 'Select Query'];
  String? popuOptionsType = 'Enter Value';
  List<String?> _queries = [];


  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    sourceValueList = nslAttribute?.attributeType?.extendedProperties?.sourceValues;
    if (sourceValueList?.isNotEmpty == true) {
      for (SourceValuesDTO sourceValue in sourceValueList!) {
        if (!dropdownItems.contains(sourceValue.DATA?.displayValue)) dropdownItems.add(sourceValue.DATA?.displayValue);
      }
    }
    Widget widget = FormField(
        key: widgetKey,
        builder: (temp) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(nslAttribute?.name ?? 'dd'),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 12, 0.0, 12),
                  child: Theme(
                    data: ThemeData(useMaterial3: true),
                    child: DropdownSearch<dynamic>(
                      items: dropdownItems,
                      validator: FormBuilderValidators.compose([FormBuilderValidators.required(errorText: '')]),
                      popupProps: PopupPropsMultiSelection.menu(
                        searchFieldProps: const TextFieldProps(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.fromLTRB(SpaceConstants.widgetPadding12,
                                SpaceConstants.widgetPadding12, SpaceConstants.widgetMargin8, 0),
                            labelText: 'Search a Value',
                          ),
                        ),
                        showSearchBox: true,
                        itemBuilder: (BuildContext context, dynamic item, bool isSelected) {
                          // String presentValue =
                          //     fbKeyList[displayList['entityId']]?.currentState?.value[displayList['id'].toString()];
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: !isSelected
                                ? null
                                : BoxDecoration(
                                    border: Border.all(color: Theme.of(context).primaryColor),
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                  ),
                            child: ListTile(
                              selected: isSelected,
                              title: Text(item),
                              trailing: Radio(
                                  value: item,
                                  //groupValue: presentValue,
                                  groupValue: '',
                                  activeColor: Colors.redAccent,
                                  onChanged: (dynamic value) {}),
                            ),
                          );
                        },
                      ),
                      dropdownDecoratorProps: const DropDownDecoratorProps(
                        dropdownSearchDecoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFCCCCCC), width: 5.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFCCCCCC)),
                          ),
                          hintText: 'Select Item',
                          contentPadding: EdgeInsets.fromLTRB(12, SpaceConstants.widgetPadding4, 0, 0),
                        ),
                      ),
                      onChanged: (value) {
                        selectedValue = value;

                      },
                      selectedItem: selectedValue,
                    ),

                  )),
            ],
          );
        });
    return widget;
  }
}
