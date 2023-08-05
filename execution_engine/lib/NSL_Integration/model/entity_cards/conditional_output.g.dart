// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conditional_output.dart';

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

ConditionalOutput _$ConditionalOutputFromJson(Map<String, dynamic> json) {
  return ConditionalOutput(
      fieldName: json['fieldName'] as String?,
      alternateField: json['alternateField'] as String?,
      thenMessage: json['thenMessage'] as String?,
      elseMessage: json['elseMessage'] as String?,
      outputFieldName: json['outputFieldName'] as String?,
      functionType: json['functionType'] != null
          ? _$FunctionTypeEnumMap.entries.singleWhere((e) => e.value == json['functionType'])?.key
          : null,
      searchQuery: Query.fromJson(json['searchQuery'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ConditionalOutputToJson(ConditionalOutput instance) => <String, dynamic>{
      'fieldName': instance.fieldName,
      'alternateField': instance.alternateField,
      'thenMessage': instance.thenMessage,
      'elseMessage': instance.elseMessage,
      'outputFieldName': instance.outputFieldName,
      'functionType': _$FunctionTypeEnumMap[instance.functionType],
      'searchQuery': instance.searchQuery?.toJson()
    };
