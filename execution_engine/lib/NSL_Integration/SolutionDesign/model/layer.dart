import 'package:execution_engine/Execution/models/execute_change_unit.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/participating_items.dart';

part 'layer.g.dart';

@JsonSerializable(explicitToJson: true)
class Layer {
  String? type;

  List<ParticipatingItem>? participatingItems;

  int? id;

  int? ownerId;

  String? guid;

  String? label;

  int? updatedAt;

  List? membershipList;

  List<EntityList>? entityList;

  Layer(
      {this.type,
      this.participatingItems,
      this.id,
      this.guid,
      this.updatedAt,
      this.ownerId,
      this.membershipList,
      this.label,
      this.entityList});

  factory Layer.fromJson(Map<String, dynamic> json) => _$LayerFromJson(json);

  Map<String, dynamic> toJson() => _$LayerToJson(this);
}
