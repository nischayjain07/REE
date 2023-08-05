// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validators_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValidatorsListDTO _$ValidatorsListDTOFromJson(Map<String, dynamic> json) {
  return ValidatorsListDTO(
    status: json['status'] as int?,
    message: json['message'] as String?,
    validatorsList: (json['result'] as List)
        .map((e) => ValidatorDTO?.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ValidatorsListDTOToJson(ValidatorsListDTO instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.validatorsList?.map((e) => e.toJson()).toList(),
    };
