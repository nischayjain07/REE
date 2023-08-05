import 'package:execution_engine/NSL_Integration/SolutionDesign/model/entity_details.dart';
import 'package:execution_engine/NSL_Integration/model/nsl_attributes.dart';

class CardItems {
  EntityDetails? sourceEntity;
  NslAttributes? sourceAttribute;
  String? operator;
  NslAttributes? targetAttribute;
  EntityDetails? targetEntity;
  String? conditionExpression;
  bool? andOrOperator;
  String? initialValueOfAndOrOperator;
  dynamic targetValue;
  bool? isTargetValue;
  List<NslAttributes>? sourceAttributeList;

  List<NslAttributes>? targetAttributeList;

  CardItems(
      {this.targetEntity,
      this.initialValueOfAndOrOperator,
      this.sourceEntity,
      this.targetValue,
      this.operator,
      this.andOrOperator,
      this.sourceAttribute,
      this.targetAttribute,
      this.isTargetValue,
      this.sourceAttributeList,
      this.targetAttributeList,
      this.conditionExpression});

  Map<String, dynamic> toJson() {
    return {
      'sourceEntity': sourceEntity?.toJson(),
      'targetEntity': targetEntity?.toJson(),
      'targetValue': targetValue,
      'sourceAttribute': sourceAttribute?.toJson(),
      'targetAttribute': targetAttribute?.toJson(),
      'operator': operator,
      'isTargetValue': isTargetValue,
      'andOrOperator': andOrOperator,
      'initialValueOfAndOrOperator': initialValueOfAndOrOperator,
      'targetAttributeList': targetAttributeList?.map((e) => e?.toJson())?.toList(),
      'sourceAttributeList': sourceAttributeList?.map((e) => e?.toJson())?.toList(),
    };
  }
}
