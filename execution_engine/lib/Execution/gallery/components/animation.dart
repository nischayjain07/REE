import 'package:execution_engine/Execution/gallery/components/slider.dart';
import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';

class UIAnimation {
  final UIWidget wid;
  late UISlider duration;
  late UISlider initialOpacity;
  late UISlider finalOpacity;
  late UISlider initialHOffset;
  late UISlider initialVOffset;
  UIAnimation({required this.wid,}) {
    UISlider object1 = UISlider(
        wid: wid,
        min: 0.0,
        max: 5000.0,
        title: "Duration (ms)",
        defaultValue: 0000.0,
        num: 0);
    UISlider object2 = UISlider(
        wid: wid,
        min: 0.0,
        max: 1.0,
        title: "Initial Opacity",
        defaultValue: 1.0,
        num: 2);
    UISlider object3 = UISlider(
        wid: wid,
        min: 0.0,
        max: 1.0,
        title: "Final Opacity",
        defaultValue: 1.0,
        num: 2);
    UISlider object4 = UISlider(
        wid: wid,
        min: -100.0,
        max: 100.0,
        title: "Initial Horizontal Offset",
        defaultValue: 0.0,
        num: 1);
    UISlider object5 = UISlider(
        wid: wid,
        min: -100.0,
        max: 100.0,
        title: "Initial Vertical Offset",
        defaultValue: 0.0,
        num: 1);
    duration = object1;
    duration.setParameter(duration.sliderController);
    initialOpacity = object2;
    finalOpacity = object3;
    finalOpacity.setParameter(finalOpacity.sliderController);
    initialHOffset = object4;
    initialVOffset = object5;
  }
  String _showAnimationCurve = "Ease In Out";
  Curve curve = Curves.easeInOut;
  final List<String> _animationCurveValues = [
    "Ease In",
    "Ease Out",
    "Ease In Out",
    "Bounce",
    "Elastic",
    "Linear"
  ];
  final List<Curve> _curveList = [
    Curves.easeIn,
    Curves.easeOut,
    Curves.easeInOut,
    Curves.bounceIn,
    Curves.elasticIn,
    Curves.linear
  ];
  double l = 0, r = 0, t = 0, b = 0;
  Widget selectAnimationProperty() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          child:DropdownButtonFormField<String>(
              value: _showAnimationCurve,
              decoration: const InputDecoration(
                label: Text("Animation Curve", style: TextStyle(fontSize: 15)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
              items: _animationCurveValues.map((e) {
                return DropdownMenuItem( value: e, child: Text(e));
              }).toList(),
              onChanged: (changedValue) {
                _showAnimationCurve = changedValue!;
                curve = _curveList[_animationCurveValues.indexOf(_showAnimationCurve)];
              }),
        ),
        const SizedBox(height: 5),
        duration.slider(),
        const SizedBox(height: 3),
        initialOpacity.slider(),
        const SizedBox(height: 3),
        finalOpacity.slider(),
        const SizedBox(height: 3),
        initialHOffset.slider(),
        const SizedBox(height: 3),
        initialVOffset.slider(),
      ],
    );
  }

  Widget animationWidget(Widget childToBeAnimated) {
    if(initialHOffset.parameter[0]>0){
      l = initialHOffset.parameter[0];
    }else{
      r = -initialHOffset.parameter[0];
    }
    if(initialVOffset.parameter[0]>0){
      t = initialVOffset.parameter[0];
    }else{
      b = -initialVOffset.parameter[0];
    }
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: Duration(milliseconds: duration.parameter[0].toInt()),
      curve: curve,
      builder: (BuildContext ct, double val, Widget? child) {
        return Opacity(
          opacity: initialOpacity.parameter[0] +
              val * (finalOpacity.parameter[0] - initialOpacity.parameter[0]),
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                l - val * l, t - val * t, r - val * r, b - val * b),
            child: child,
          ),
        );
      },
      child: childToBeAnimated,
    );
  }
}
