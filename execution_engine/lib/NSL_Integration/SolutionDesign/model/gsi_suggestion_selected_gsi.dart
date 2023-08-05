import 'package:json_annotation/json_annotation.dart';

part 'gsi_suggestion_selected_gsi.g.dart';

@JsonSerializable(nullable: true)
class SelectedGSI {
  @JsonKey(nullable: true)
  String? name;
  @JsonKey(nullable: true)
  String? displayName;
  @JsonKey(defaultValue: 'DLD')
  String? dldId;

  SelectedGSI({this.name, this.displayName, this.dldId});

  factory SelectedGSI.fromJson(Map<String, dynamic> json) => _$SelectedGSIFromJson(json);

  Map<String, dynamic> toJson() => _$SelectedGSIToJson(this);
}
