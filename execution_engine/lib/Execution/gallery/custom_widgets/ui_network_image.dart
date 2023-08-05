import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

part 'ui_network_image.g.dart';

@JsonSerializable(explicitToJson: true)
class UINetworkImage {
  @JsonKey(includeFromJson: false, includeToJson: false)
  UIWidget? widget;
  String? url = '';
  double? scale = 1;
  Map<String, String>? headers = {};
  TextEditingController _urlController = TextEditingController();
  UINetworkImage({this.widget});

  NetworkImage property() {
    return NetworkImage(
      url!,
      scale: scale!,
      headers: headers,
    );
  }

  factory UINetworkImage.fromJson(Map<String, dynamic> json) {
    var wid = _$UINetworkImageFromJson(json);
    wid._urlController.text = wid.url != null && wid.url!.isNotEmpty ? wid.url! : '';
    return wid;
  }

  Map<String, dynamic> toJson() {
    return _$UINetworkImageToJson(this);
  }

  Future<bool> checkUrl() async {
    try {
      final response = await http.head(Uri.parse(url!));
      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }
}
