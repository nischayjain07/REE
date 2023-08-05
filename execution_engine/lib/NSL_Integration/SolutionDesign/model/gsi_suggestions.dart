import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/gsi_suggestion_selected_gsi.dart';

part 'gsi_suggestions.g.dart';

@JsonSerializable(explicitToJson: true)
class GSISuggestions {
  String? Book;
  List<SelectedGSI>? GSIList;

  GSISuggestions({this.Book, this.GSIList});

  factory GSISuggestions.fromJson(Map<String, dynamic> json) => _$GSISuggestionsFromJson(json);

  Map<String, dynamic> toJson() => _$GSISuggestionsToJson(this);
}
