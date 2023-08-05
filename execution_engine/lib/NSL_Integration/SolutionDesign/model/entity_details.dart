import 'package:execution_engine/NSL_Integration/SolutionDesign/model/participating_items.dart';

class EntityDetails {
  int? id;
  String? name;
  ParticipatingItem? participatingItem;
  String? layerType;
  String? type;
  String? slot;

  EntityDetails({
    this.id,
    this.name,
    this.participatingItem,
    this.layerType,
    this.type,
    this.slot,
  });

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'layerType': layerType, 'slot': slot, 'type': type};
  }
}
