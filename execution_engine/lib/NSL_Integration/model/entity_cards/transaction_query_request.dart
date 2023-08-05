
import 'package:execution_engine/NSL_Integration/model/entity_cards/arithmetic_operation.dart';
import 'package:execution_engine/NSL_Integration/model/entity_cards/conditional_output.dart';
import 'package:execution_engine/NSL_Integration/model/entity_cards/es_page_request.dart';
import 'package:execution_engine/NSL_Integration/model/entity_cards/group_by.dart';
import 'package:execution_engine/NSL_Integration/model/entity_cards/nsl_function.dart';
import 'package:execution_engine/NSL_Integration/model/entity_cards/query.dart';
import 'package:execution_engine/NSL_Integration/model/entity_cards/sort.dart';

part 'transaction_query_request.g.dart';

class TransactionQueryRequest {
  List<String>? entitiesList;
  List<int>? entityIdsList;
  List<GroupBy>? groupBy;
  List<Sort?>? sort;
  Query? searchQuery;
  List<String>? attributesList;
  String? searchQueryValue;
  List<String>? includeFields;
  List<String>? excludeFields;
  List<NSLFunction>? functions;
  List<ConditionalOutput>? conditionalOutputList;
  Map<String, String>? inputOutputMapping; // fields to be part of resultant Entity
  List<ArithmeticOperation>? arithmeticOperations;
  int? offset;
  int? limit;
  ESPageRequest? esPageRequest;

  TransactionQueryRequest(
      {this.entitiesList,
      this.groupBy,
      this.sort,
      this.searchQuery,
      this.entityIdsList,
      this.searchQueryValue,
      this.attributesList,
      this.excludeFields,
      this.includeFields,
      this.inputOutputMapping,
      this.functions,
      this.conditionalOutputList});

  factory TransactionQueryRequest.fromJson(Map<String, dynamic> json) => _$TransactionQueryRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionQueryRequestToJson(this);
}
