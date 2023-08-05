import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/role_my_collection.dart';

part 'all_org_unit_response.g.dart';

@JsonSerializable(explicitToJson: true)
class AllOrgUnitResponse {
  int? activeOrgUnits;
  List<Agents>? content;
  int? totalOrgUnits;

  AllOrgUnitResponse({
    this.activeOrgUnits,
    this.content,
    this.totalOrgUnits,
  });

  factory AllOrgUnitResponse.fromJson(Map<String, dynamic> json) => _$AllOrgUnitResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AllOrgUnitResponseToJson(this);
}
