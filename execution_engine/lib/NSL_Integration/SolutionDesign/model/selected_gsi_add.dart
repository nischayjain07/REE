import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/agents.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/cu.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/dcd.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/layer.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/time_rights.dart';

part 'selected_gsi_add.g.dart';

@JsonSerializable(explicitToJson: true, nullable: true)
class SelectedGSIAdd {
  String? Industry;
  List<CU>? solutionLogic;

  List<TimeRights>? designTimeRights;

  List<TimeRights>? txnTimeRights;

  List<Dcd>? dcd;

  String? cuType;

  String? name;

  String? displayName;

  String? description;

  List<Layer>? layers;

  String? version;

  String? status;

  String? source;

  List<Agent>? agents;

  String? dldId;

  SelectedGSIAdd(
      {this.Industry,
      this.solutionLogic,
      this.designTimeRights,
      this.cuType,
      this.agents,
      this.dcd,
      this.description,
      this.displayName,
      this.dldId,
      this.layers,
      this.name,
      this.source,
      this.status,
      this.txnTimeRights,
      this.version});

  factory SelectedGSIAdd.fromJson(Map<String, dynamic> json) => _$SelectedGSIAddFromJson(json);

  Map<String, dynamic> toJson() => _$SelectedGSIAddToJson(this);
}
