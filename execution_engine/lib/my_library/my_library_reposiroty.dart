import 'dart:convert';

import 'package:execution_engine/auth/authentication.dart';
import 'package:execution_engine/constants.dart';
import 'package:execution_engine/my_library/models/all_cu_response.dart';
import 'package:http/http.dart' as http;

MyLibrary myLib = MyLibrary();

class MyLibrary {
  Future getSolutionsList({String? searchText, String? gsiType, String? week}) async {
    await getUserToken();
    try {
      var queryParams = {
        'page': '1',
        'limit': '20',
        'query': searchText ?? '',
        'ontology': '',
        'isPublished': gsiType == 'PUBLISHED'
            ? StringConstants.trueValue
            : gsiType == 'DRAFT'
                ? StringConstants.falseValue
                : '',
        'publisherIdOrName': '',
        'userRights': 'EXECUTION_RIGHTS',
        'designMode': 'false',
        'fromUpdatedTime': week ?? ''
      };
      var queryString = Uri(queryParameters: queryParams).query;
      var response;

      String url = 'https://$environment/dsd-orch/dsd-bets-store/tenant/gsi/matching?$queryString';
      response = await http.get(Uri.parse(url), headers: getHeaders());

      switch (response.statusCode) {
        case 401:
          break;
        case 200:
          AllCU gsiResponse;
          var responseBody = jsonDecode(response.body);
          gsiResponse = AllCU.fromJson(responseBody);
          return gsiResponse.result?.data;
        default:
          throw Exception('${response.statusCode} ${response.data}');
      }
    } catch (e, stack) {
      rethrow;
    }
  }
}
