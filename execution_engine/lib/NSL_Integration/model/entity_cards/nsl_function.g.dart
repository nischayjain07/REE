// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nsl_function.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

const _$FunctionTypeEnumMap = {
  FunctionType.AVG: 'AVG',
  FunctionType.COUNT: 'COUNT',
  FunctionType.FREQUENCY: 'FREQUENCY',
  FunctionType.GMEAN: 'GMEAN',
  FunctionType.HMEAN: 'HMEAN',
  FunctionType.IQR: 'IQR',
  FunctionType.MAX: 'MAX',
  FunctionType.MEAN: 'MEAN',
  FunctionType.MEDIAN: 'MEDIAN',
  FunctionType.MIN: 'MIN',
  FunctionType.MODE: 'MODE',
};

NSLFunction _$NSLFunctionFromJson(Map<String, dynamic> json) {
  return NSLFunction(
      fieldName: json['fieldName'] as String?,
      functionType: json['functionType'] != null
          ? _$FunctionTypeEnumMap.entries.singleWhere((e) => e.value == json['functionType'])?.key
          : null);
}

Map<String, dynamic> _$NSLFunctionToJson(NSLFunction instance) => <String, dynamic>{
      'fieldName': instance.fieldName,
      'functionType': _$FunctionTypeEnumMap[instance.functionType],
    };
