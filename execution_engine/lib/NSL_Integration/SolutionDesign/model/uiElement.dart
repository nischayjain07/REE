import 'package:json_annotation/json_annotation.dart';

part 'uiElement.g.dart';

@JsonSerializable()
class UIElement {
  String? name;

  String? dataType;

  String? uiElement;

  bool? isMulti;
  @JsonKey(defaultValue: [])
  List<String>? properties;

  String? source;

  UIElement({this.name, this.dataType, this.isMulti, this.uiElement, this.source, this.properties});

  factory UIElement.fromJson(Map<String, dynamic> json) => _$UIElementFromJson(json);

  Map<String, dynamic> toJson() => _$UIElementToJson(this);
}
