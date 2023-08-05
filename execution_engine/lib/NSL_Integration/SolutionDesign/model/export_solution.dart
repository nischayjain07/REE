import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/export_item_details.dart';

part 'export_solution.g.dart';

@JsonSerializable()
class ExportData {
  String? name;
  String? version;
  String? description;
  bool? readOnly;
  bool? imported;
  List<ItemDetails>? itemDetails;

  ExportData({
    this.name,
    this.version,
    this.description,
    this.readOnly,
    this.imported,
    this.itemDetails,
  });

  factory ExportData.fromJson(Map<String, dynamic> json) => _$ExportDataFromJson(json);

  Map<String, dynamic> toJson() => _$ExportDataToJson(this);
}
