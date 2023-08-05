// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connections_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConnectionsList _$ConnectionsListFromJson(Map<String, dynamic> json) {
  return ConnectionsList(
    connectionName: json['connectionName'] as String?,
    connId: json['connId'] as int?,
  );
}

Map<String, dynamic> _$ConnectionsListToJson(ConnectionsList instance) => <String, dynamic>{
      'connectionName': instance.connectionName,
      'connId': instance.connId,
    };
