import 'package:json_annotation/json_annotation.dart';

part 'sort.g.dart';

@JsonSerializable(nullable: true)
class Sort {
  @JsonKey(nullable: true)
  String? fieldName;
  //@JsonKey(nullable: true)
  // Order? order;

  Sort({this.fieldName
      //this.order
      });

  factory Sort.fromJson(Map<String, dynamic> json) => _$SortFromJson(json);

  Map<String, dynamic> toJson() => _$SortToJson(this);
}
