import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_annotation/json_annotation.dart';

import 'components/components.dart';
import 'gallery.dart';

part 'ui_Checkbox.g.dart';

@JsonSerializable(explicitToJson: true)
class UICheckBox extends UIWidget {
  UIPadding? padding;
  UISwitchListTile? selected;
  UISwitchListTile? autofocus;
  UIColorPickerWidget? activeColor;
  UIColorPickerWidget? tileColor;
  UIColorPickerWidget? checkColor;
  UIColorPickerWidget? titleColor;
  UIColorPickerWidget? subtitleColor;
  UIColorPickerWidget? checkBorderColor;
  UITextAlignContainer? textAlign;
  UITextAlignContainer? textAlignS;
  UITextStyleContainer? textStyle;
  UITextStyleContainer? textStyleS;

  initialize() {
    padding ??= UIPadding(initPadding: 0);
    selected ??= UISwitchListTile(title: 'Selected', widget: this);
    autofocus ??= UISwitchListTile(title: 'AutoFocus', widget: this);
    activeColor ??= UIColorPickerWidget(title: 'Active Color', color: Colors.blueAccent.value, widget: this);
    tileColor ??= UIColorPickerWidget(title: 'Tile Color', color: Colors.white.value, widget: this);
    checkColor ??= UIColorPickerWidget(title: 'Check Color', color: Colors.white.value, widget: this);
    titleColor ??= UIColorPickerWidget(title: 'Title Color', widget: this);
    subtitleColor ??= UIColorPickerWidget(title: 'Subtitle Color', widget: this);
    checkBorderColor ??= UIColorPickerWidget(title: 'Check Border Color', widget: this);
    textAlign ??= UITextAlignContainer(widget: this);
    textAlignS ??= UITextAlignContainer(widget: this);
    textStyle ??= UITextStyleContainer(widget: this);
    textStyleS ??= UITextStyleContainer(widget: this);
    _radiusController.text = '$borderRadius';
    _valueControllerT.text = valueT != null ? '$valueT' : 'Title';
    _sizeControllerT.text = '$fontSizeT';
    _valueControllerS.text = valueS != null ? '$valueS' : 'Title';
    _sizeControllerS.text = '$fontSizeS';
    _durationAnime.text = '$durationAnime';
    _iniOpacityAnime.text = '$iniOpacity';
    _finalOpacityAnime.text = '$finalOpacity';
    _horizontalIniOffsetAnime.text = '$horizontalIniOffset';
    _horizontalFinalOffsetAnime.text = '$horizontalFinalOffset';
    _verticalIniOffsetAnime.text = '$verticalIniOffset';
    _verticalFinalOffsetAnime.text = '$verticalFinalOffset';
  }

  bool value = true;
  int selectedTileColor = Colors.greenAccent.value;
  int controlAffinity = ListTileControlAffinity.trailing.index;
  bool leading = false;
  double borderRadius = 0.0;
  final TextEditingController _radiusController = TextEditingController(text: '0.0');

  String showFontWeight = "400-Normal";
  final List<String> _fontWeightValues = [
    "100-Thin",
    "200-Extra light",
    "300-Light",
    "400-Normal",
    "500-Medium",
    "600-Semi Bold",
    "700-Bold",
    "800-Extra Bold",
    "900-Black"
  ];

  String? valueT = 'Title';
  double fontSizeT = 16;
  int fontWeightT = FontWeight.normal.index;
  final TextEditingController _valueControllerT = TextEditingController(text: 'Title');
  final TextEditingController _sizeControllerT = TextEditingController(text: '16');

  String? valueS = 'SubTitle';
  double fontSizeS = 10;
  int fontWeightS = FontWeight.normal.index;
  final TextEditingController _valueControllerS = TextEditingController(text: 'SubTitle');
  final TextEditingController _sizeControllerS = TextEditingController(text: '10');

  final _isOpen = List<bool>.filled(5, false);
  final _devices = List<bool>.filled(3, true);

  final List<Curve> _curveList = [
    Curves.easeIn,
    Curves.easeOut,
    Curves.easeInOut,
    Curves.bounceIn,
    Curves.elasticIn,
    Curves.linear
  ];
  String showAnimationCurve = "Ease In";
  int curve = 0;
  final List<String> _animationCurveValues = ["Ease In", "Ease Out", "Ease In Out", "Bounce", "Elastic", "Linear"];
  int duration = 600;
  double durationAnime = 0;
  final TextEditingController _durationAnime = TextEditingController(text: '600');
  // int delay =0;
  // double delayAnime = 0;
  //final TextEditingController _delayAnime= TextEditingController(text: '0');
  double iniOpacity = 1;
  double iniOpacityAnime = 1;
  final TextEditingController _iniOpacityAnime = TextEditingController(text: '1');
  double finalOpacity = 1;
  double finalOpacityAnime = 1;
  final TextEditingController _finalOpacityAnime = TextEditingController(text: '1');
  //bool hideBeforeAnimating = false;
  bool fadeAnime = false;

  int horizontalIniOffset = 0;
  double horizontalIniOffsetAnime = 0;
  final TextEditingController _horizontalIniOffsetAnime = TextEditingController(text: '0');
  int horizontalFinalOffset = 0;
  double horizontalFinalOffsetAnime = 0;
  final TextEditingController _horizontalFinalOffsetAnime = TextEditingController(text: '0');

  int verticalIniOffset = 0;
  double verticalIniOffsetAnime = 0;
  final TextEditingController _verticalIniOffsetAnime = TextEditingController(text: '0');
  int verticalFinalOffset = 0;
  double verticalFinalOffsetAnime = 0;
  final TextEditingController _verticalFinalOffsetAnime = TextEditingController(text: '0');

  double iniScaleAnime = 0;
  final TextEditingController _iniScaleAnime = TextEditingController(text: '0');
  double finalScaleAnime = 0;
  final TextEditingController _finalScaleAnime = TextEditingController(text: '1');

  int l1 = 0, r1 = 0, t1 = 0, b1 = 0;
  int l2 = 0, r2 = 0, t2 = 0, b2 = 0;

  UICheckBox({Key? key}) : super(key: key, isContainer: false, hasChildren: false, hasChild: false) {
    class_name = "UICheckBox";
    initialize();
  }

  UICheckBox.name({Key? key}) : super(key: key, isContainer: false, hasChildren: false, hasChild: false) {
    class_name = "UICheckBox";
    initialize();
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    // bool isMobile = Responsive.isMobile(GlobalVariable.ctx!);
    // bool isTablet = Responsive.isTablet(GlobalVariable.ctx!);
    // bool isDesktop = Responsive.isDesktop(GlobalVariable.ctx!);

    if (horizontalIniOffset > 0) {
      l1 = horizontalIniOffset;
    } else {
      r1 = horizontalIniOffset;
    }
    if (horizontalFinalOffset > 0) {
      l2 = horizontalFinalOffset;
    } else {
      r2 = horizontalFinalOffset;
    }
    if (verticalIniOffset < 0) {
      b1 = verticalIniOffset;
    } else {
      t1 = verticalIniOffset;
    }
    if (verticalFinalOffset < 0) {
      b2 = verticalFinalOffset;
    } else {
      t2 = verticalFinalOffset;
    }
    if (fadeAnime == false) {
      iniOpacity = 1;
    }

    Widget widget = TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: Duration(milliseconds: duration),
      curve: _curveList[0],
      builder: (BuildContext ct, double val, Widget? child) {
        return Opacity(
          opacity: iniOpacity + val * (finalOpacity - iniOpacity),
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                l1 - val * l1 + val * l2, t1 - val * t1 + val * t2, r1 - val * r1 + val * r2, b1 - val * b1 + val * b2),
            child: child,
          ),
        );
      },
      child: CheckboxListTile(
        key: widgetKey,
        value: value,
        activeColor: Color(activeColor!.color!),
        checkColor: Color(checkColor!.color!),
        side: BorderSide(
          color: Color(checkBorderColor!.color!),
        ),
        controlAffinity: ListTileControlAffinity.values[controlAffinity],
        checkboxShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
        autofocus: autofocus!.isSelected!,
        selectedTileColor: Color(selectedTileColor),
        selected: selected!.isSelected!,
        tileColor: Color(tileColor!.color!),
        contentPadding: EdgeInsets.fromLTRB(padding!.left, padding!.top, padding!.right, padding!.bottom),
        title: Text(
          valueT ?? '',
          textAlign: TextAlign.values[textAlign!.alignment!],
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.values[fontWeightT],
            fontSize: fontSizeT,
            color: Color(titleColor!.color!),
            decoration: textStyle!.textDecoration,
            fontStyle: FontStyle.values[textStyle!.fontStyle ?? FontStyle.normal.index],
          ),
        ),
        subtitle: Text(
          valueS ?? '',
          textAlign: TextAlign.values[textAlignS!.alignment!],
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.values[fontWeightS],
            fontSize: fontSizeS,
            color: Color(subtitleColor!.color!),
            decoration: textStyleS!.textDecoration,
            fontStyle: FontStyle.values[textStyle!.fontStyle ?? FontStyle.normal.index],
          ),
        ),
        onChanged: (dynamic value) {
          value = value!;
          // BlocProvider.of<SiteBuilderBloc>(GlobalVariable.ctx!).add(RefreshWidgetEvent(target: this));
        },
      ),
    );

    if (kDebugMode) {
      // print(selectedWidget);
    }
    if (kDebugMode) {
      // print(this);
    }
    // if ((isMobile && !_devices[0]) || (isTablet && !_devices[1]) || (isDesktop && !_devices[2])) {
    //   return Container(key: widgetKey);
    // }
    return widget;
  }

  factory UICheckBox.fromJson(Map<String, dynamic> json) {
    var wid = _$UICheckBoxFromJson(json);
    wid._radiusController.text = '${wid.borderRadius}';
    wid._valueControllerT.text = wid.valueT != null ? '${wid.valueT}' : 'Title';
    wid._sizeControllerT.text = '${wid.fontSizeT}';
    wid._valueControllerS.text = wid.valueS != null ? '${wid.valueS}' : 'Title';
    wid._sizeControllerS.text = '${wid.fontSizeS}';
    wid._durationAnime.text = '${wid.durationAnime}';
    wid._iniOpacityAnime.text = '${wid.iniOpacity}';
    wid._finalOpacityAnime.text = '${wid.finalOpacity}';
    wid._horizontalIniOffsetAnime.text = '${wid.horizontalIniOffset}';
    wid._horizontalFinalOffsetAnime.text = '${wid.horizontalFinalOffset}';
    wid._verticalIniOffsetAnime.text = '${wid.verticalIniOffset}';
    wid._verticalFinalOffsetAnime.text = '${wid.verticalFinalOffset}';
    return wid;
  }

  @override
  Map<String, dynamic> toJson() => _$UICheckBoxToJson(this);
}
