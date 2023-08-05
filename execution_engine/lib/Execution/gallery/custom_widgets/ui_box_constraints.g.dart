// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_box_constraints.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIBoxConstraints _$UIBoxConstraintsFromJson(Map<String, dynamic> json) => UIBoxConstraints(isBoxConstraints: false)
  ..class_name = json['class_name'] as String
  ..minWidth = (json['minWidth'] as num?)?.toDouble()
  ..maxWidth = (json['maxWidth'] as num?)?.toDouble()
  ..minHeight = (json['minHeight'] as num?)?.toDouble()
  ..maxHeight = (json['maxHeight'] as num?)?.toDouble()
  ..isBoxConstraints = json['isBoxConstraints'] as bool
  ..isBoxConstraintsVisible = json['isBoxConstraintsVisible'] as bool;

Map<String, dynamic> _$UIBoxConstraintsToJson(UIBoxConstraints instance) => <String, dynamic>{
      'class_name': instance.class_name,
      'minWidth': instance.minWidth,
      'maxWidth': instance.maxWidth,
      'minHeight': instance.minHeight,
      'maxHeight': instance.maxHeight,
      'isBoxConstraints': instance.isBoxConstraints,
      'isBoxConstraintsVisible': instance.isBoxConstraintsVisible
    };
