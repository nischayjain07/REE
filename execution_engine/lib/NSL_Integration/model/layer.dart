import 'package:json_annotation/json_annotation.dart';
import 'package:execution_engine/NSL_Integration/model/participating_items.dart';


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

  Layer(
      {this.type,
      this.participatingItems,
      this.id,
      this.guid,
      this.updatedAt,
      this.ownerId,
      this.membershipList,
      this.label});

  factory Layer.fromJson(Map<String, dynamic> json) => _$LayerFromJson(json);

  Map<String, dynamic> toJson() => _$LayerToJson(this);
}
