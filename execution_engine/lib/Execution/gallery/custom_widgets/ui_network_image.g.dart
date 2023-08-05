part of 'ui_network_image.dart';

UINetworkImage _$UINetworkImageFromJson(Map<String, dynamic> json) => UINetworkImage()
  ..url = json['url'] as String?
  ..scale = (json['scale'] as num?)?.toDouble()
  ..headers = null;

Map<String, dynamic> _$UINetworkImageToJson(UINetworkImage instance) => <String, dynamic>{
      'url': instance.url,
      'scale': instance.scale,
      'headers': instance.headers,
    };
