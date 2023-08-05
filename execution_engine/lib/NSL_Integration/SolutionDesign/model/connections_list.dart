import 'package:json_annotation/json_annotation.dart';

part 'connections_list.g.dart';

@JsonSerializable(explicitToJson: true)
class ConnectionsList {
  String? connectionName;
  int? connId;

  ConnectionsList({this.connectionName, this.connId});

  factory ConnectionsList.fromJson(Map<String, dynamic> json) => _$ConnectionsListFromJson(json);

  Map<String, dynamic> toJson() => _$ConnectionsListToJson(this);
}
