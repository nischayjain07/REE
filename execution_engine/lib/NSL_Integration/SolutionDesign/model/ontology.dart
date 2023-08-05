import 'package:json_annotation/json_annotation.dart';

part 'ontology.g.dart';

@JsonSerializable()
class Ontology {
  String? id;
  String? name;
  String? displayName;
  int? level;

  Ontology({this.id, this.name, this.displayName, this.level});

  factory Ontology.fromJson(Map<String, dynamic> json) => _$OntologyFromJson(json);

  Map<String, dynamic> toJson() => _$OntologyToJson(this);
}
