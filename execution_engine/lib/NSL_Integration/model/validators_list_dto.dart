import 'package:json_annotation/json_annotation.dart';
import 'package:execution_engine/NSL_Integration/model/validator_dto.dart';


part 'validators_list_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class ValidatorsListDTO {
  int? status;
  String? message;

  List<ValidatorDTO>? validatorsList;

  ValidatorsListDTO({this.validatorsList, this.status, this.message});

  factory ValidatorsListDTO.fromJson(Map<String, dynamic> json) => _$ValidatorsListDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ValidatorsListDTOToJson(this);
}
