import 'package:execution_engine/NSL_Integration/SolutionDesign/model/error_dto.dart';

class CuExceptions {
  String? cuName;
  String? errorType;
  List<ErrorDTO>? errorDtoList;

  CuExceptions({this.cuName, this.errorType, this.errorDtoList});
}
