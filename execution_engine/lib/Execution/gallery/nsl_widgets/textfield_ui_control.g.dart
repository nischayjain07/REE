// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'textfield_ui_control.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UICTextField _$UICTextFieldFromJson(Map<String, dynamic> json) => UICTextField()
  ..offset = (json['offset'] as num).toDouble()
  ..offset1 = (json['offset1'] as num).toDouble()
  ..size = (json['size'] as num?)?.toDouble()
  ..size1 = (json['size1'] as num?)?.toDouble()
  ..class_name = json['class_name'] as String
  ..nslAttribute = NslAttributes()
  ..nslAttribute?.name = (json['name'] as String?)
  ..nslAttribute?.id = (json['id'] as int?)
  ..nslAttribute?.dsdId = (json['dsdId'] as String?);

Map<String, dynamic> _$UICTextFieldToJson(UICTextField instance) => <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'name': instance.nslAttribute?.name,
      'id': instance.nslAttribute?.id,
      'dsdId': instance.nslAttribute?.dsdId,
    };
