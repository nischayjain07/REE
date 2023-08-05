import 'package:json_annotation/json_annotation.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/time_rights.dart';

part 'agents_roles.g.dart';

@JsonSerializable(explicitToJson: true)
class AgentRoles {
  int? rightHolderId;

  String? rightHolderName;

  String? rightHolderType;

  int? confidence;

  TimeRights? designTimeRights;

  TimeRights? txnTimeRights;

  String? dldId;

  AgentRoles(
      {this.rightHolderId,
      this.rightHolderName,
      this.rightHolderType,
      this.confidence,
      this.designTimeRights,
      this.txnTimeRights,
      this.dldId});

  factory AgentRoles.fromJson(Map<String, dynamic> json) => _$AgentRolesFromJson(json);

  Map<String, dynamic> toJson() => _$AgentRolesToJson(this);
}
