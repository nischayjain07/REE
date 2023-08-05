import 'package:execution_engine/Execution/gallery/ui_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/author.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/agents.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/dcd.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/event_cu.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/exception_cu.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/layer.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/mindCU.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/next_trigger_set.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/ontology.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/properties_map.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/time_rights.dart';
import 'package:execution_engine/NSL_Integration/model/solution_design.dart';

part 'cu.g.dart';

@JsonSerializable(explicitToJson: true)
class CU {

  List<UIScaffold>? pageWidgets = [];
  
  int? index;

  int? masterId;

  int? ownerId;

  String? cuType;

  String? name;

  String? displayName;

  String? description;

  String? dsdId;

  String? source;

  String? version;

  List<Agent>? agents;

  List<Layer>? layers;

  List<EventCU>? eventCUList;

  List? contextualId;

  int? referencedChangeUnit;

  String? dsdReferencedChangeUnit;

  bool? isReserved;

  String? status;

  String? dsdStatus;

  int? id;

  String? guid;

  List<NextTriggerSet>? nextTriggerSet;

  List<Dcd>? dcd;

  List<ExceptionCU>? exceptionCUList;

  List<MindCU>? mindCUList;

  Map? entityDesignRights;

  Map? entityTransactionRights;

  Map? attributeDesignRights;

  Map? attributeTransactionRights;

  Map? specialFeatureProperties;

  List? membershipList;

  List<TimeRights>? designTimeRights;

  List<TimeRights>? txnTimeRights;

  PropertiesMap? propertiesMap;

  int? updatedAt;

  bool? draftedCu;
  @JsonKey(name: 'TYPE')
  String? type;
  @JsonKey(name: 'DATA')
  CU? data;

  String? constraintName;

  String? constraint;
  @JsonKey(nullable: true)
  String? condition;
  @JsonKey(nullable: true)
  String? conditionName;
  @JsonKey(nullable: true)
  String? reservedCUType;

  List<CU>? solutionLogic;

  bool? gsiAddedToGsiFlag;

  SolutionDesign? design;
  @JsonKey(nullable: true)
  String? estimatedTime;
  @JsonKey(nullable: true)
  int? mileStoneId;
  @JsonKey(nullable: true)
  Map? slotItemProperties;
  @JsonKey(nullable: true)
  Map? slotItemData;

  String? querySentence;

  List<String>? keywords;
  List<Ontology>? ontology;

  List<String>? tCUConditionalPotentiality;
  List<String>? tCUConditionalPotentialityNames;
  Author? author;

  CU(
      {
      this.pageWidgets,
      this.index,
      this.cuType,
      this.masterId,
      this.ownerId,
      this.name,
      this.displayName,
      this.description,
      this.dsdStatus,
      this.agents,
      this.layers,
      this.eventCUList,
      this.source,
      this.contextualId,
      this.referencedChangeUnit,
      this.dsdReferencedChangeUnit,
      this.isReserved,
      this.status,
      this.reservedCUType,
      this.gsiAddedToGsiFlag,
      this.txnTimeRights,
      this.designTimeRights,
      this.id,
      this.guid,
      this.nextTriggerSet,
      this.dcd,
      this.version,
      this.exceptionCUList,
      this.dsdId,
      this.mindCUList,
      this.entityDesignRights,
      this.entityTransactionRights,
      this.attributeDesignRights,
      this.attributeTransactionRights,
      this.specialFeatureProperties,
      this.membershipList,
      this.propertiesMap,
      this.updatedAt,
      this.draftedCu,
      this.constraint,
      this.constraintName,
      this.condition,
      this.conditionName,
      this.solutionLogic,
      this.design,
      this.estimatedTime,
      this.slotItemProperties,
      this.mileStoneId,
      this.slotItemData,
      this.querySentence,
      this.keywords,
      this.ontology,
      this.tCUConditionalPotentiality,
      this.tCUConditionalPotentialityNames,
      this.author});

  // @override
  // bool? operator ==(dynamic other) => other != null && other is CU && this.id == other.id;

  factory CU.fromJson(Map<String, dynamic> json) => _$CUFromJson(json);

  Map<String, dynamic> toJson() => _$CUToJson(this);
}
