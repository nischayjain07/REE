import 'package:execution_engine/NSL_Integration/SolutionDesign/model/reference_entity_info.dart';

class EventCU {
  int? changeDriverId;
  String? dsdChangeDriverId;
  String? eventType;
  bool? isGsi;
  String? dsdGsiId;
  int? gsiId;
  String? gsiName;
  ReferenceEntityInfo? referenceEntityInfo;

  EventCU({this.changeDriverId, this.dsdChangeDriverId, this.eventType, this.isGsi, this.referenceEntityInfo});

  EventCU.fromJson(Map<String, dynamic> json) {
    changeDriverId = json['changeDriverId'];
    dsdChangeDriverId = json['dsdChangeDriverId'];
    eventType = json['eventType'];
    isGsi = json['isGsi'];
    referenceEntityInfo = ReferenceEntityInfo.fromJson(json['referenceEntityInfo']);
    dsdGsiId = json['dsdGsiId'];
    gsiId = json['gsiId'];
    gsiName = json['gsiName'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['changeDriverId'] = changeDriverId;
    data['dsdChangeDriverId'] = dsdChangeDriverId;
    data['eventType'] = eventType;
    data['isGsi'] = isGsi;
    data['gsiId'] = gsiId;
    data['dsdGsiId'] = dsdGsiId;
    data['gsiName'] = gsiName;
    if (referenceEntityInfo != null) {
      data['referenceEntityInfo'] = referenceEntityInfo?.toJson();
    }
    return data;
  }
}
