import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:execution_engine/Execution/gallery/dynamic_list_of_widget.dart';
import 'package:json_annotation/json_annotation.dart';
import 'ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'ui_carousel.g.dart';

class CarouselControllerSerialiser implements JsonConverter<CarouselController, String> {
  const CarouselControllerSerialiser();

  @override
  CarouselController fromJson(String json) {
    return CarouselController();
  }

  // => json as CarouselController;
  @override
  String toJson(CarouselController buttonCarouselController) {
    String jsonStringData = jsonEncode(buttonCarouselController.toString());
    return jsonStringData;
  }
}

@JsonSerializable(explicitToJson: true)
class UICarousel extends UIWidget {
  double height = 20;
  bool? isFixedHeight = true;

  double aspectRatio = 16 / 9;
  bool autoPlay = false;
  bool enableInfiniteScroll = false;
  bool enlargeCenterPage = true;
  bool reverse = false;
  int autoPlayInterval = 4;
  int autoPlayAnimationDuration = 800;
  bool pauseAutoPlayOnTouch = true;
  int currentindex = 0;
  bool enableCarouselIndicator = true;
  int indicatorActivecolor = Colors.red.value;
  int indicatorInactivecolor = Colors.grey.value;
  List<UIWidget> children = List.empty(growable: true);
  List<bool> isOpen = [false, false, false];
  double controllerHeight = 10;
  double controllerWidth = 10;
  double viewport = 0.6;
  double imagewidth = 150;
  double indicatorMarginV = 10;
  double indicatorMarginH = 2;
  @CarouselControllerSerialiser()
  CarouselController buttonCarouselController = CarouselController();

  UICarousel({
    Key? key,
  }) : super(key: key, hasChildren: true, isContainer: true, hasChild: false) {
    class_name = "UICarousel";
    isFixedHeight ??= true;
  }

  final TextEditingController _heightController = TextEditingController(text: '20');
  final TextEditingController _viewportcontroller = TextEditingController(text: '0.6');
  final TextEditingController _imagewidthcontroller = TextEditingController(text: '150');
  final TextEditingController _aspectRatioController = TextEditingController(text: '16/9');
  final TextEditingController _imageUrlController = TextEditingController(text: '');
  final TextEditingController _autoPlayIntervalController = TextEditingController(text: '4');
  final TextEditingController _autoPlayAnimationDurationController = TextEditingController(text: '800');
  final TextEditingController _indicatorHeightController = TextEditingController(text: '10');
  final TextEditingController _indicatorWidthController = TextEditingController(text: '10');
  final TextEditingController _indicatorMarginVcontroller = TextEditingController(text: '10');
  final TextEditingController _indicatorMarginHcontroller = TextEditingController(text: '2');

  factory UICarousel.fromJson(Map<String, dynamic> json) => _$UICarouselFromJson(json);
  Map<String, dynamic> toJson() {
    class_name = "UICarousel";
    return _$UICarouselToJson(this);
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    List<Widget> newWidgetList = getRunTimeWidgetList(selectedWidget, hoveredWidget);

    Widget widget = Column(
      key: widgetKey,
      children: <Widget>[
        CarouselSlider(
          // children: newWidgetList,
          items: newWidgetList,
          // .map(
          //   (e) => Container(
          //     key: UniqueKey(),
          //     width: imagewidth,
          //     child: e.widget(selectedWidget: selectedWidget, hoveredWidget: hoveredWidget),
          //   ),
          // )
          // .toList(),
          options: CarouselOptions(
            viewportFraction: viewport == 0 ? 0.5 : viewport,
            height: height,
            aspectRatio: aspectRatio,
            enableInfiniteScroll: enableInfiniteScroll,
            enlargeCenterPage: enlargeCenterPage,
            reverse: reverse,
            initialPage: 0,
            autoPlay: autoPlay,
            autoPlayInterval: Duration(seconds: autoPlayInterval),
            autoPlayAnimationDuration: Duration(milliseconds: autoPlayAnimationDuration),
            scrollDirection: Axis.horizontal,
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: pauseAutoPlayOnTouch,
            onPageChanged: (index, reason) {
              currentindex = index;
              // BlocProvider.of<SiteBuilderBloc>(GlobalVariable.ctx!).add(RefreshWidgetEvent(target: this));
            },
          ),
          carouselController: buttonCarouselController,
        ),
        enableCarouselIndicator
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: children.map((e) {
                  int index = children.indexOf(e);
                  return InkWell(
                    onTap: () {
                      buttonCarouselController.jumpToPage(index);
                      // CarouselController().jumpToPage(index);
                    },
                    child: Container(
                      width: controllerWidth,
                      height: controllerHeight,
                      margin: EdgeInsets.symmetric(vertical: indicatorMarginV, horizontal: indicatorMarginH),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentindex == index ? Color(indicatorActivecolor) : Color(indicatorInactivecolor)),
                    ),
                  );
                }).toList(),
              )
            : Container(),
      ],
    );
    return widget;
  }

  @override
  List<Widget> getRunTimeWidgetList(UIWidget? selectedWidget, UIWidget? hoveredWidget) {
    List<Widget> newWidgetList = [];
    for (int index = 0; index < children.length; index++) {
      if (children[index] != null) (children[index].keyValue = keyValue);
      if (children[index] is DynamicListOfWidget) {
        newWidgetList.addAll(children[index].widgetList(selectedWidget: selectedWidget, hoveredWidget: hoveredWidget));
      } else {
        newWidgetList.add(
          Container(
            key: UniqueKey(),
            width: imagewidth,
            child: children[index].widget(selectedWidget: selectedWidget, hoveredWidget: hoveredWidget),
          ),
        );
      }
    }
    return newWidgetList;
  }

  UICarousel.name({Key? key}) : super(key: key, hasChildren: true, isContainer: true, hasChild: false) {
    class_name = "UICarousel";
    isFixedHeight ??= true;
  }
}
