// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exception_cu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExceptionCU _$ExceptionCUListFromJson(Map<String, dynamic> json) {
  return ExceptionCU(
    containerId: json['containerId'] as int?,
    containerType: json['containerType'] as String?,
    cuTobeExecuted: json['cuTobeExecuted'] as int?,
    exceptionCUName: json['exceptionCUName'] as String?,
    exceptionCategory: json['exceptionCategory'] as String?,
    dsdCuTobeExecuted: json['dsdCuTobeExecuted'] as String?,
    id: json['id'] as int?,
  );
}

Map<String, dynamic> _$ExceptionCUListToJson(ExceptionCU instance) => <String, dynamic>{
      'id': instance.id,
      'exceptionCUName': instance.exceptionCUName,
      'exceptionCategory': instance.exceptionCategory,
      'containerId': instance.containerId,
      'cuTobeExecuted': instance.cuTobeExecuted,
      'dsdCuTobeExecuted': instance.dsdCuTobeExecuted,
      'containerType': instance.containerType,
    };
