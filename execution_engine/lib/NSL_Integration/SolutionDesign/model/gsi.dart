import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/author.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/exception_cu.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/agents.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/cu.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/dcd.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/error_response_dto.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/layer.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/next_trigger_set.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/ontology.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/time_rights.dart';

part 'gsi.g.dart';

@JsonSerializable(explicitToJson: true)
class GSI {
  List<NextTriggerSet>? nextTriggerSet;

  List<Dcd>? dcd;

  List<ExceptionCU>? exceptionCUList;

  bool? allowPreviouCUView;

  List? eventCUList;

  String? cuType;

  String? name;

  String? displayName;

  String? description;

  List<Agent>? agents;

  List? superOrdinateCUList;

  List? subOrdinateCUList;

  bool? isReserved;

  String? status;

  String? dsdStatus;

  String? dsdId;

  int? id;

  List<TimeRights>? designTimeRights;

  List<TimeRights>? txnTimeRights;

  List<Layer>? layers;

  String? constraint;

  String? constraintName;

  List<CU>? solutionLogic;

  int? masterId;

  int? ownerId;

  List<String>? rights;

  String? version;

  String? source;

  String? type;

  @JsonKey(nullable: true)
  List<String>? keywords;
  @JsonKey(nullable: true)
  List<Ontology>? ontology;

  Author? author;

  GSI(
      {this.nextTriggerSet,
      this.dcd,
      this.exceptionCUList,
      this.allowPreviouCUView,
      this.eventCUList,
      this.cuType,
      this.name,
      this.displayName,
      this.description,
      this.agents,
      this.superOrdinateCUList,
      this.subOrdinateCUList,
      this.isReserved,
      this.status,
      this.dsdStatus,
      this.dsdId,
      this.id,
      this.designTimeRights,
      this.txnTimeRights,
      this.layers,
      this.masterId,
      this.constraint,
      this.constraintName,
      this.ownerId,
      this.rights,
      this.solutionLogic,
      this.type,
      this.version,
      this.source,
      this.keywords,
      this.ontology,
      this.author});

  factory GSI.fromJson(Map<String, dynamic> json) => _$GSIFromJson(json);

  Map<String, dynamic> toJson() => _$GSIToJson(this);
}
