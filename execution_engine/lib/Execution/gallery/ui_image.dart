import 'dart:convert';
import 'dart:ui';

import 'package:execution_engine/Execution/gallery/custom_widgets/ui_border_radius.dart';
import 'package:execution_engine/constants.dart';
import 'package:execution_engine/constants1.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:json_path/json_path.dart';
import 'ui_widget.dart';

part 'ui_image.g.dart';

class AlignmentGeometrySerialiser implements JsonConverter<List<Alignment>, String> {
  const AlignmentGeometrySerialiser();

  @override
  List<Alignment> fromJson(String json) {
    List<Alignment> alignmentvalues = [
      Alignment.center,
      Alignment.centerLeft,
      Alignment.centerRight,
      Alignment.bottomCenter,
      Alignment.topCenter,
      Alignment.topLeft,
      Alignment.topRight,
      Alignment.bottomLeft,
      Alignment.bottomRight,
    ];
    return alignmentvalues;
  }

  @override
  String toJson(List<Alignment> alignmentvalues) => alignmentvalues.toString();
}

List<String> imageRepeat = ImageRepeat.values.map((e) => e.name).toList();
List<String> filter = FilterQuality.values.map((e) => e.name).toList();

@JsonSerializable(explicitToJson: true)
class UIImage extends UIWidget {
//
  bool isDynamicNetworkURL = false;

  String? dynamicNetworkURL = 'DynamicURL';

  String fileUrl = "../../../../assets/images/text.png";
  String? base64String;
  String url =
      'https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';

  double height = 50;
  double width = 50;
  bool? isFixedWidth = true;
  bool? isFixedHeight = true;

  int fit = BoxFit.contain.index;
  int color = Colors.black.value;
  int? filterQuality;
  int? repeat;
  double? sigmaX = 0.001;
  double? sigmaY = 0.001;
  UIBorderRadius? borderRadius;
  bool isNetwork = true;
  final _isOpen = List<bool>.filled(3, false);
  double? initialblur = 0.01;
  double? finalblur = 0.01;
  int blurduration = 10;
  bool isAdvbluroptions = false;
  int alignmentindex = 0;
  @AlignmentGeometrySerialiser()
  List<Alignment> alingmnetvalue = alignmentvalues;
  // Alignment alignment = Alignment.center;

  final TextEditingController _urlController = TextEditingController(text: '');
  final TextEditingController _urlControllerDynamic = TextEditingController(text: '');
  final TextEditingController _heightController = TextEditingController(text: '50');
  final TextEditingController _widthController = TextEditingController(text: '50');
  final TextEditingController _sigmaXcontroller = TextEditingController(text: '0');
  final TextEditingController _sigmaYcontroller = TextEditingController(text: '0');
  final TextEditingController _blurdurationcontroller = TextEditingController(text: '10');
  final TextEditingController _initialblurcontroller = TextEditingController(text: '0.01');
  final TextEditingController _finalblurcontroller = TextEditingController(text: '0.01');

  initialize() async {
    borderRadius ??= UIBorderRadius(widget: this);
    repeat ??= 3;
    filterQuality ??= 1;
    _urlController.text = url;
    base64String ??= StringConstants.base64DefaultImage;
    _urlControllerDynamic.text = url;
    base64String ??= base64DefaultImage;
  }

  UIImage({Key? key}) : super(key: key, hasChildren: false, isContainer: false, hasChild: false) {
    class_name = "UIImage";
    initialize();
  }

  UIImage.name({Key? key}) : super(key: key, hasChildren: false, isContainer: false, hasChild: false) {
    class_name = "UIImage";
    initialize();
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = ClipRRect(
        borderRadius: borderRadius!.property(),
        child: isAdvbluroptions
            ? TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: initialblur ?? 0, end: finalblur ?? 0),
                duration: Duration(seconds: blurduration),
                builder: (_, double value, child) {
                  return ImageFiltered(imageFilter: ImageFilter.blur(sigmaX: value, sigmaY: value), child: child);
                },
                child: Image(
                  key: widgetKey,
                  image: isNetwork ? NetworkImage(url) : NetworkImage(base64String!),
                  height: height,
                  width: width,
                  fit: BoxFit.values[fit],
                  alignment: alignmentvalues[alignmentindex],
                  filterQuality: FilterQuality.values[filterQuality ?? 1],
                  repeat: ImageRepeat.values[repeat ?? 3],
                ),
              )
            : ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: sigmaX ?? 0, sigmaY: sigmaY ?? 0),
                child: Image(
                  key: widgetKey,
                  image: isNetwork ? NetworkImage(url) : NetworkImage(base64String!),
                  height: height,
                  width: width,
                  fit: BoxFit.values[fit],
                  alignment: alignmentvalues[alignmentindex],
                ),
              ));
    return widget;
  }

  bool isValidJsonPath(String jsonPathString) {
    try {
      final jsonPath = JsonPath(jsonPathString);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Widget widgetFuture({UIWidget? selectedWidget, UIWidget? hoveredWidget, String? snapshot}) {
    // if (backendAPIName != null && apiDataStoreVariableName != null && variables[apiDataStoreVariableName!] == null) {
    //   apiService.CallAPI(backendAPIName!).then((value) {
    //     variables[apiDataStoreVariableName!] = jsonEncode(value);
    //   });
    // }

    String? _dynamicValue;
    if (snapshot != null && this.isDynamicNetworkURL) {
      if (isValidJsonPath('${dynamicNetworkURL}')) {
        try {
          _dynamicValue = JsonPath('${dynamicNetworkURL}').read(jsonDecode(snapshot!)).first.value as String?;
        } catch (e) {
          _dynamicValue = url;
        }
        if (_dynamicValue == null) {
          _dynamicValue = url;
        }
      } else {
        _dynamicValue = url;
      }
    } else {
      _dynamicValue = url;
    }

    Widget widget = ClipRRect(
      borderRadius: borderRadius!.property(),
      child: isAdvbluroptions
          ? TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: initialblur ?? 0, end: finalblur ?? 0),
              duration: Duration(seconds: blurduration),
              builder: (_, double value, child) {
                return ImageFiltered(imageFilter: ImageFilter.blur(sigmaX: value, sigmaY: value), child: child);
              },
              child: Image(
                key: widgetKey,
                image: isNetwork ? NetworkImage(_dynamicValue!) : NetworkImage(base64String!),
                height: height,
                width: width,
                fit: BoxFit.values[fit],
                alignment: alignmentvalues[alignmentindex],
                filterQuality: FilterQuality.values[filterQuality ?? 1],
                repeat: ImageRepeat.values[repeat ?? 3],
              ),
            )
          : ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: sigmaX ?? 0, sigmaY: sigmaY ?? 0),
              child: Image(
                key: widgetKey,
                image: isNetwork ? NetworkImage(_dynamicValue!) : NetworkImage(base64String!),
                height: height,
                width: width,
                fit: BoxFit.values[fit],
                alignment: alignmentvalues[alignmentindex],
              ),
            ),
    );

    // return (selectedWidget == this)
    //     ? highlightAndMakeWidgetDraggable(widget, this)
    //     : (hoveredWidget == this)
    //         ? hoverHighlight(widget)
    //         : widget;

    return widget;
  }

  factory UIImage.fromJson(Map<String, dynamic> json) {
    var wid = _$UIImageFromJson(json);
    wid._urlController.text = '${wid.url}';
    wid._heightController.text = '${wid.height}';
    wid._widthController.text = '${wid.width}';
    wid._sigmaXcontroller.text = wid.sigmaX != null ? '${wid.sigmaX}' : '0';
    wid._sigmaYcontroller.text = wid.sigmaY != null ? '${wid.sigmaY}' : '0';
    wid._initialblurcontroller.text = wid.initialblur != null ? '${wid.initialblur}' : '0.01';
    wid._finalblurcontroller.text = wid.finalblur != null ? '${wid.finalblur}' : '0.01';
    wid._blurdurationcontroller.text = '${wid.blurduration}';
    return wid;
  }

  Map<String, dynamic> toJson() {
    this.class_name = "UIImage";
    return _$UIImageToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class UIImageNetwork extends UIWidget {
  String src = '';
  double? scale;
  Map<String, String>? headers;

  UIImageNetwork(this.src, {Key? key}) : super(key: key, hasChildren: false, isContainer: false);

  UIImageNetwork.name(this.src, {Key? key}) : super(key: key, hasChildren: false, isContainer: false);

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = Image.network(
      src,
      headers: headers,
      // width: MediaQuery.of(GlobalVariable.ctx!).size.width * .20,
    );

    return widget;
  }

  @override
  Widget propertySheet() {
    // TODO: implement propertySheet
    // throw UnimplementedError();
    return ListView();
  }

  @override
  add(UIWidget widget) {
    children.clear();
    children.add(widget);
    //child = widget;
  }

  @override
  remove(UIWidget widget) {
    //child=null;
    children.clear();
  }

  @override
  select() {
    // TODO: implement select
    throw UnimplementedError();
  }

  factory UIImageNetwork.fromJson(Map<String, dynamic> json) {
    json['src'] = json['value'];
    return _$UIImageNetworkFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UIImageNetworkToJson(this);
  }
}
