// import 'dart:convert';

// import 'package:execution_engine/Execution/gallery/dynamic_list_of_widget.dart';
// import 'package:execution_engine/constants.dart';
// import 'package:http/http.dart' as http;
// import 'package:execution_engine/NSL_Integration/SolutionDesign/model/cu.dart';
// import 'package:execution_engine/NSL_Integration/SolutionDesign/model/gsi.dart';
// import 'package:execution_engine/NSL_Integration/model/action_gsi.dart';
// import 'package:execution_engine/NSL_Integration/model/all_book_response.dart';
// import 'package:execution_engine/NSL_Integration/model/all_cu_response.dart';
// import 'package:execution_engine/NSL_Integration/model/attribute_ui_control.dart';
// import 'package:execution_engine/NSL_Integration/model/attribute_ui_control_list.dart';
// import 'package:execution_engine/NSL_Integration/model/entity_cards/transaction_query_request.dart';
// import 'package:execution_engine/NSL_Integration/model/entity_cards/transaction_query_result.dart';
// import 'package:execution_engine/NSL_Integration/model/entity_details.dart';
// import 'package:execution_engine/NSL_Integration/model/roles.dart';
// import 'package:execution_engine/NSL_Integration/model/validator_dto.dart';
// import 'package:execution_engine/NSL_Integration/model/validators_list_dto.dart';

// NslRepository nslRepository = NslRepository();
// String? token;

// Map<String, String> getHeaders() {
//   return {
//     'Authorization': 'Bearer $token',
//     'Accept-Language': Languages.english.languageCode,
//     'Content-Type': 'application/json',
//     'Accept': 'application/json, text/plain, */*',
//   };
// }

// String environment = 'narayana.carnivalsb.nslhub.com';

// class NslRepository {
//   List<ValidatorDTO>? _validatorsList;

//   // Map<String, String> getHeaders() {
//   //   return {'Content-Type': 'application/json', 'Accept': 'application/json', 'Accept-Language': 'EN'};
//   // }

//   Future getUserToken() async {
//     try {
//       var requestBody = jsonEncode(<String, String>{
//         "userName": "usercco",
//         "encryptedPassword":
//             "dWGA9eA1oWK4PDAgnOSPt1epXHRoeA7mZ1G0lLwryHt5Zrtv0F+07uwXlm2dtr63c5aD30tmUv07RjufZWP+H4pfuXB5Ka5Ujy7y8Nf0yJm/M7sZ9xd17xx+mmQP0ayhj3auvjNkj23fa+25onpxTHs1NLwnV1RWgh8dfzACou8=",
//         "tenantName": "apiqa2912preqa",
//         "clientId": "apiqa2912preqa",
//         "guestUserId": ""
//       });
//       var requestBodyNarayana = jsonEncode(<String, String>{
//         "userName": "nischay",
//         "encryptedPassword":
//             "dmTnOW8a11hCxfFvqtTU/sV7qBtTU/DNiqQiJ8/WtnlIFY85tNk3aGSHKeXIjZ5q96tDFWXl8lKkk3+WRsup9T0LpAuU5RKhGQzF4irTkkl3v51HKzjaJHeUadDXf5eHiU23PDtY2/m4TxScGFhUcXPBaROZB6ZBBhZ0o7UUxtU=",
//         "tenantName": "narayana",
//         "clientId": "narayana",
//         "guestUserId": ""
//       });
//       var response = await http.post(
//           Uri.parse('https://narayana.carnivalsb.nslhub.com/dsd-orch/nsl-iam/api/login/v2/login-action'),
//           headers: getHeaders(),
//           body: requestBodyNarayana);
//       switch (response.statusCode) {
//         case 200:
//           // logger.d('Logged in successfully', stackTrace: StackTrace.empty);
//           var jsonTransaction = jsonDecode(response.body);
//           token = jsonTransaction['result']['access_token'];
//           break;
//         default:
//           throw Exception(response.statusCode);
//       }
//     } catch (e, s) {
//       print('Error in fetching user token. $e');
//     }
//   }

//   Future<List<AttributeUiControlDTO>> fetchUiControls() async {
//     List<AttributeUiControlDTO> _attributesTypeList = [];
//     var response;
//     String url = 'https://$environment/dsd-orch/design/ui-elem?limit=80&page=1&query=&dataType=';
//     response = await http.get(Uri.parse(url), headers: getHeaders());
//     switch (response.statusCode) {
//       case 401:
//         getUserToken();
//         break;
//       case 200:
//         try {
//           AttributeUiControlListDTO attributeUiControls;
//           var responseBody = jsonDecode(response?.body);
//           attributeUiControls = AttributeUiControlListDTO.fromJson(responseBody['result']);
//           _attributesTypeList.addAll(attributeUiControls.data as List<AttributeUiControlDTO>);
//         } catch (e, s) {
//           // logger.e(s);
//         }
//         break;
//       default:
//         throw Exception('${response.statusCode} ${response.data}');
//     }
//     return _attributesTypeList;
//   }

//   Future<List<ValidatorDTO>?> fetchValidatorsList() async {
//     var response;
//     String url = 'https://$environment/dsd-orch/core/attributeTypesWithDetails';
//     response = await http.get(Uri.parse(url), headers: getHeaders());
//     switch (response.statusCode) {
//       case 401:
//         getUserToken();
//         break;
//       case 200:
//         try {
//           ValidatorsListDTO validatorsList;
//           var responseBody = jsonDecode(response.body);
//           //  var res = ValidatorsListDTO.fromJson(responseBody);
//           validatorsList = ValidatorsListDTO.fromJson(responseBody);
//           _validatorsList = validatorsList.validatorsList;
//         } catch (e, s) {
//           // logger.e(e);
//         }
//         break;
//       default:
//         throw Exception('${response.statusCode} ${response.data}');

//       // for (var validator in _validatorsList) {
//       //   if (validator.name.toUpperCase() == _currentAttribute.dataType.toUpperCase()) {
//       //     _currentAttributeTypeValidatorsList = validator.constraints;
//       //   }
//       // }

//       // DropdownButton(
//       //   hint: Text(userGlobal?.labels['SELECT_VALIDATORS']),
//       //   items: currentAttributeTypeValidators.map((constraint) {
//       //     return DropdownMenuItem(
//       //       value: constraint,
//       //       child: Text(
//       //         constraint.displayName,
//       //       ),
//       //     );
//       //   }).toList(),
//       //   onChanged: (validator) async {
//       //     entityBloc.add(AddSelectedValidator(validator: validator));
//       //   },
//       // ),

//       // bool isValidatorPresent = false;
//       // for (var validator in _allSelectedValidators) {
//       //   if (validator.name == event.validator.name) {
//       //     isValidatorPresent = true;
//       //   }
//       // }
//       // if (isValidatorPresent == false) {
//       //   _allSelectedValidators.add(event.validator);
//       //   _disabledValidators.addAll(getOppositeConstraints(event.validator.name));

//       //   /// The selected validator needs to be disabled in the dropdown
//       //   _disabledValidators.add(event.validator?.name ?? []);
//       //   _disabledValidators.toSet().toList();
//       // }
//     }
//   }

//   Future getValidatorListFor(String? currentAttributeDataType) async {
//     if (_validatorsList == null) {
//       await fetchValidatorsList();
//     }
//     if (currentAttributeDataType != null) {
//       for (var validator in _validatorsList ?? []) {
//         if (validator.name.toUpperCase() == currentAttributeDataType.toUpperCase()) {
//           return validator.constraints;
//         }
//       }
//     }
//     return;
//   }

//   Future getAllRoles(String searchText, bool isFirstTimeLoad) async {
//     try {
//       var requestBody = {'isActive': true, 'roleName': searchText};
//       var response;
//       String url =
//           'https://$environment/dsd-orch/nsl-iam/api/roles/getAllRoles?pageNumber=0&pageSize=20&viewGuestRole=true';
//       response = await http.post(Uri.parse(url), headers: getHeaders(), body: jsonEncode(requestBody));
//       switch (response.statusCode) {
//         case 401:
//           getUserToken();
//           break;
//         case 200:
//           AllRoles allRoles;
//           var responseBody = jsonDecode(response?.body);
//           allRoles = AllRoles.fromJson(responseBody);
//           return allRoles;
//         default:
//           throw Exception('${response.statusCode} ${response.data}');
//       }
//     } catch (e, s) {}
//   }

//   Future getEntities(String searchText, {RolesList? role}) async {
//     try {
//       var response;
//       String url =
//           'https://$environment/dsd-orch/dsd-bets-store/tenant/entity?query=$searchText&publisherIdOrName=&ontology=&page=1&limit=20&isPublished=true&userRight=TXN_DECISION_RIGHTS&rightHolderId=${role?.id ?? ''}&rightOwnerType=ROLE';
//       response = await http.get(Uri.parse(url), headers: getHeaders());
//       switch (response.statusCode) {
//         case 401:
//           getUserToken();
//           break;
//         case 200:
//           EntityDetails entityDetails;
//           var responseBody = jsonDecode(response?.body);
//           entityDetails = EntityDetails.fromJson(responseBody);
//           return entityDetails.result?.entityDataList;
//         default:
//           throw Exception('${response.statusCode} ${response.data}');
//       }
//     } catch (e, s) {}
//   }

//   Future getActionGsi(int entityId) async {
//     try {
//       // logger.e(entityId.toString());
//       var response;
//       String url = 'https://$environment/nsl-bet-analyzer/bet/action-gsi/id?id=${entityId.toString()}';
//       response = await http.get(Uri.parse(url), headers: getHeaders());
//       switch (response.statusCode) {
//         case 401:
//           getUserToken();
//           break;
//         case 200:
//           ActionGSIList actionGsiList;
//           var responseBody = jsonDecode(response?.body);
//           actionGsiList = ActionGSIList.fromJson(responseBody);
//           return actionGsiList.result;
//         default:
//           throw Exception('${response.statusCode} ${response.data}');
//       }
//     } catch (e, s) {}
//   }

//   //       TransactionQueryResult result = await MyPlanService().getTransactionList(request: request);

//   Future getEntityTransactionList({TransactionQueryRequest? request, int pageNumber = 0, EntityData? entity}) async {
//     try {
//       // request payload {"groupBy":[],"searchQuery":{"searchQueryDepth":0,"operationType":"AND","queries":[]},"functions":[],"entityCardID":"6453a2d20f83b979572628b2","action":"SEARCH","sessionId":"1687162992000_6453a2d20f83b979572628b2_458506626657","entitiesList":["visionmission eu"],"entityIdsList":[277227529642],"searchQueryValue":""}
//       // query parameters - pageNumber=0&pageSize=15

//       // var requestBody = {"groupBy":[],"searchQuery":{"searchQueryDepth":0,"operationType":"AND","queries":[]},"functions":[],"entityCardID":"6453a2d20f83b979572628b2","action":"SEARCH","sessionId":"1687162992000_6453a2d20f83b979572628b2_458506626657","entitiesList":["visionmission eu"],"entityIdsList":[277227529642],"searchQueryValue":""};
//       var queryParams = {
//         'pageNumber': pageNumber.toString(),
//         'pageSize': '15',
//       };
//       // TransactionQueryRequest request = TransactionQueryRequest(
//       //       // entitiesList: [entityCard?.primaryEntity?.name],
//       //       entityIdsList: [74705290841]
//       //       );

//       Map<String, dynamic> requestBody = {
//         "groupBy": [],

//         "searchQuery": {"searchQueryDepth": 0, "operationType": "AND", "queries": []},
//         "searchQueryValue": "",

//         "functions": [],
//         // "entityCardID": "6488637374322e0af2621996",
//         "action": "SEARCH",
//         // "sessionId": "1687222907000_6488637374322e0af2621996_1198235926056",
//         "entitiesList": [entity?.name],
//         "entityIdsList": [entity?.id]
//       };

//       // var queryString = Uri(queryParameters: queryParams).query;
//       var queryString = 'pageNumber=0&pageSize=15';
//       // var requestBody = request?.toJson();
//       var response;

//       String url = 'https://${environment}/dsd-orch/query/txn-ge-search/facet-search?$queryString';
//       response = await http.post(Uri.parse(url), headers: getHeaders(), body: jsonEncode(requestBody));

//       switch (response.statusCode) {
//         case 401:
//           getUserToken();
//           break;
//         case 200:
//           TransactionQueryResult transactionQueryResult;
//           var responseBody = jsonDecode(response?.body);
//           transactionQueryResult = TransactionQueryResult?.fromJson(responseBody['result']);
//           return transactionQueryResult.content?.first?.data;
//         default:
//           throw Exception('${response.statusCode} ${response.data}');
//       }
//     } catch (e, s) {
//       return;
//     }
//   }

//   // https://narayana.carnivalsb.nslhub.com/dsd-orch/dsd-bets-store/tenant/book/matching?rightHolderId=927260792802&rightOwnerType=ROLE&pageNo=0&pageSize=5&searchCriteria=&designMode=true&fromUpdatedTime=&userRight=EXECUTION_RIGHTS

// //   rightHolderId: 927260792802
// // rightOwnerType: ROLE
// // pageNo: 0
// // pageSize: 5
// // searchCriteria:
// // designMode: true
// // fromUpdatedTime:
// // userRight: EXECUTION_RIGHTS

//   Future getBooksList(
//       {String? searchText, String? userRight, String? week, String? bookStatus, bool? isFirstTimeLoad}) async {
//     try {
//       var queryParams = {
//         'pageNo': '0',
//         'pageSize': '30',
//         'searchCriteria': searchText ?? '',
//         'userRight': userRight ?? '',
//         'designMode': 'false',
//         'fromUpdatedTime': week ?? '',
//         'approvalStatuses': bookStatus ?? '',
//       };
//       var queryString = Uri(queryParameters: queryParams).query;
//       var response;

//       String url = 'https://$environment/dsd-orch/dsd-bets-store/tenant/book/matching?$queryString';
//       response = await http.get(Uri.parse(url), headers: getHeaders());

//       switch (response.statusCode) {
//         case 401:
//           getUserToken();
//           break;
//         case 200:
//           AllBookResponse allBookResponse;
//           var responseBody = jsonDecode(response.body);
//           allBookResponse = AllBookResponse?.fromJson(responseBody);
//           return allBookResponse.result?.content;
//         // if (_bookPageNo == 0) {
//         //   _allBook = allBookResponse.result?.content;
//         //   _bookCount = allBookResponse.result?.total;
//         // } else {
//         //   _allBook.addAll(allBookResponse.result?.content);
//         // }
//         default:
//           throw Exception('${response.statusCode} ${response.data}');
//       }
//     } catch (e, stack) {
//       // logger.e(e.toString());
//     }
//   }

//   Future getSolutionsListInBook({String searchText = '', required String bookId, String pageSize = '20'}) async {
//     try {
//       var queryParams = {
//         'pageNo': '0',
//         'pageSize': pageSize,
//         'searchCriteria': searchText,
//         'designMode': 'false',
//       };

//       var queryString = Uri(queryParameters: queryParams).query;

//       var response;

//       String url = 'https://$environment/dsd-orch/dsd-bets-store/tenant/book/$bookId/gsi?$queryString';
//       // logger.e(url);
//       response = await http.get(Uri.parse(url), headers: getHeaders());
//       // logger.e(response.toString());
//       switch (response.statusCode) {
//         case 401:
//           getUserToken();
//           break;
//         case 200:
//           AllCU gsiResponse;
//           var responseBody = jsonDecode(response.body);
//           gsiResponse = AllCU.fromJson(responseBody);
//           return gsiResponse.result?.content;
//         default:
//           throw Exception('${response.statusCode} ${response.data}');
//       }
//     } catch (e, stack) {
//       rethrow;
//     }
//   }

//   Future getGsiListWithDesign({String? bookId}) async {
//     return [
//       GsiDesign(
//           bookId: bookId,
//           imageLink:
//               "{\"contentUrl\" : \"https\:\/\/onemg.gumlet.io\/q_auto,h_150,f_auto,a_ignore,w_150,c_fit\/gqnir1qiacmfjqg4gdtt.png\"}",
//           gsiDisplayName: "Himalaya Baby and Mother Care",
//           gsiName: '',
//           gsiId: ''),
//       GsiDesign(
//           bookId: bookId,
//           imageLink:
//               "{\"contentUrl\" : \"https\:\/\/onemg.gumlet.io\/q_auto,h_150,f_auto,a_ignore,w_150,c_fit\/lepdwzopqxcdlr68dtvg.png\"}",
//           gsiDisplayName: "Pure Herbs",
//           gsiName: '',
//           gsiId: ''),
//       GsiDesign(
//           bookId: bookId,
//           imageLink:
//               "{\"contentUrl\" : \"https\:\/\/onemg.gumlet.io\/q_auto,h_150,f_auto,a_ignore,w_150,c_fit\/hkv4ovoqeeo9ykjt7hei.png\"}",
//           gsiDisplayName: "Himalaya Skin Care",
//           gsiName: '',
//           gsiId: ''),
//       GsiDesign(
//           bookId: bookId,
//           imageLink:
//               "{\"contentUrl\" : \"https\:\/\/onemg.gumlet.io\/q_auto,h_150,f_auto,a_ignore,w_150,c_fit\/cub9l16nmvxebcbnz6yl.png\"}",
//           gsiDisplayName: "Nutrition",
//           gsiName: '',
//           gsiId: ''),
//       GsiDesign(
//           bookId: bookId,
//           imageLink:
//               "{\"contentUrl\" : \"https\:\/\/onemg.gumlet.io\/q_auto,h_150,f_auto,a_ignore,w_150,c_fit\/zsb00gknyvkc7uym5ejh.png\"}",
//           gsiDisplayName: "Hair Care",
//           gsiName: '',
//           gsiId: ''),
//       GsiDesign(
//           bookId: bookId,
//           imageLink:
//               "{\"contentUrl\" : \"https\:\/\/onemg.gumlet.io\/q_auto,h_150,f_auto,a_ignore,w_150,c_fit\/lepdwzopqxcdlr68dtvg.png\"}",
//           gsiDisplayName: "Pure Herbs",
//           gsiName: '',
//           gsiId: ''),
//       GsiDesign(
//           bookId: bookId,
//           imageLink:
//               "{\"contentUrl\" : \"https\:\/\/onemg.gumlet.io\/q_auto,h_150,f_auto,a_ignore,w_150,c_fit\/hkv4ovoqeeo9ykjt7hei.png\"}",
//           gsiDisplayName: "Himalaya Skin Care",
//           gsiName: '',
//           gsiId: ''),
//       GsiDesign(
//           bookId: bookId,
//           imageLink:
//               "{\"contentUrl\" : \"https\:\/\/onemg.gumlet.io\/q_auto,h_150,f_auto,a_ignore,w_150,c_fit\/cub9l16nmvxebcbnz6yl.png\"}",
//           gsiDisplayName: "Nutrition",
//           gsiName: '',
//           gsiId: ''),
//     ];
//   }

//   getAllCuList({
//     String? searchText,
//     String? isPublished,
//   }) async {
//     try {
//       var queryParams = {
//         'page': '1',
//         'limit': '5',
//         'query': searchText ?? '',
//         'ontology': '',
//         'isPublished': isPublished ?? '',
//         'publisherIdOrName': ''
//       };
//       var queryString = Uri(queryParameters: queryParams).query;
//       var response;

//       String url = 'https://$environment/dsd-orch/dsd-bets-store/tenant/change-unit?$queryString';
//       response = await http.get(Uri.parse(url), headers: getHeaders());

//       switch (response.statusCode) {
//         case 401:
//           // Get.offAllNamed('/login');
//           break;
//         case 200:
//           AllCU cuResponse;

//           var responseBody = jsonDecode(response.body);
//           cuResponse = AllCU.fromJson(responseBody);

//           var cus = cuResponse.result?.data ?? [];
//           return cus;
//         default:
//           throw Exception('${response.statusCode} ${response.data}');
//       }
//     } catch (e, stack) {}
//   }

//   fetchCuDetails({String? id}) async {
//     try {
//       var response;

//       String url = 'https://$environment/dsd-orch/dsd-bets-store/tenant/change-unit/$id';
//       response = await http.get(Uri.parse(url), headers: getHeaders());

//       switch (response.statusCode) {
//         case 401:
//           throw Exception(StringConstants.unauthorized);
//         case 200:
//           CU cuDetailsResponse;

//           var responseBody = jsonDecode(response.body);
//           cuDetailsResponse = CU.fromJson(responseBody['result']);
//           // _draftCU = cuDetailsResponse;
//           // _cuDetails[id] = cuDetailsResponse;
//           return cuDetailsResponse;
//           break;
//         default:
//           throw Exception('${response.statusCode} ${response.data}');
//       }
//     } catch (exception) {
//       // logger.e('Error in fetching cu details');
//       throw Exception(exception);
//     }
//   }
// }
