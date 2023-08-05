// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arithmetic_operation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArithmeticOperation _$ArithmeticOperationFromJson(Map<String, dynamic> json) {
  return ArithmeticOperation(
    name: json['name'] as String?,
    operations: json['type'] as List?,
  );
}

Map<String, dynamic> _$ArithmeticOperationToJson(ArithmeticOperation instance) => <String, dynamic>{
      'name': instance.name,
      'operations': instance.operations,
    };
