import 'package:json_annotation/json_annotation.dart';
import 'package:execution_engine/NSL_Integration/model/icon_link_details.dart';

part 'solution_design.g.dart';

@JsonSerializable(explicitToJson: true)
class SolutionDesign {
  IconLinkDetails? gsiIcon;

  SolutionDesign({this.gsiIcon});

  factory SolutionDesign.fromJson(Map<String, dynamic> json) => _$SolutionDesignFromJson(json);

  Map<String, dynamic> toJson() => _$SolutionDesignToJson(this);
}
