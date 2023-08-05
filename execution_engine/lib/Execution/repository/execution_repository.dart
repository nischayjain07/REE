// class ExecutionRepository {

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:execution_engine/Execution/models/execute_change_unit.dart';
import 'package:execution_engine/Execution/models/gsi_basic_data.dart';
import 'package:execution_engine/Execution/repository/home.dart';
import 'package:execution_engine/auth/authentication.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

ExecutionRepository executionRepository = ExecutionRepository();

class ExecutionRepository {
  Future getGSIBasicData(String bookId, int gsiId) async {
    try {
      BaseOptions options = BaseOptions(
        baseUrl: 'https://$environment',
        headers: getHeaders(),
      );
      Dio dio = Dio(options);
      var response;
      if (!kIsWeb && !Platform.isWindows) {
        response = await dio
            .get('/dsd-orch/dsd-bets-store/tenant/gsi/basic/$gsiId?bookId=$bookId&userRights=EXECUTION_RIGHTS');
      } else {
        String url =
            'https://$environment/dsd-orch/dsd-bets-store/tenant/gsi/basic/$gsiId?bookId=$bookId&userRights=EXECUTION_RIGHTS';
        response = await http.get(Uri.parse(url), headers: getHeaders());
      }
      switch (response?.statusCode) {
        case 200:
          var responseBody = jsonDecode(response?.body);
          return BasicGsiDataResult.fromJson(responseBody);
        default:
          throw Exception(response?.statusCode);
      }
    } catch (e, s) {
      // _utils.recordErrorInFirebase(error: e, stackTrace: s);
      // logger.e('Error in getting cu info. ${e.message}');
    }
  }

  Future changeUnit(ChangeUnitTransaction? changeUnitTransaction) async {
    try {
      var response = await http.post(
        Uri.parse('https://$environment/dsd-orch/execute/change-unit'),
        headers: getHeaders(),
        body: utf8.encode(
          jsonEncode(changeUnitTransaction?.toJson()),
        ),
      );
      switch (response.statusCode) {
        case 200:
          var jsonTransaction = jsonDecode(response.body);
          var executeCuResult = ExecuteChangeUnitResult?.fromJson(jsonTransaction);
          return executeCuResult.result;
        case 401:
          throw Exception(response.statusCode);
        default:
          if (response.body != null) {
            var jsonTransaction = jsonDecode(response.body);
          }
          throw Exception(response.statusCode);
      }
    } catch (e, s) {}
  }

  Future getGsiBasicData(int? gsiId) async {
    try {
      BaseOptions options = BaseOptions(
        baseUrl: 'https://$environment',
        headers: getHeaders(),
      );

      Dio dio = Dio(options);

      var response;
      if (!kIsWeb && !Platform.isWindows) {
        response = await dio.get('/dsd-orch/dsd-bets-store/tenant/gsi/basic/$gsiId?userRights=EXECUTION_RIGHTS');
      } else {
        String url = 'https://$environment/dsd-orch/dsd-bets-store/tenant/gsi/basic/$gsiId?userRights=EXECUTION_RIGHTS';
        response = await http.get(Uri.parse(url), headers: getHeaders());
      }

      switch (response?.statusCode) {
        case 200:
          var basicDataResult;
          if (!kIsWeb && !Platform.isWindows) {
            basicDataResult = BasicGsiDataResult?.fromJson(response.data);
          } else {
            basicDataResult = BasicGsiDataResult?.fromJson(response?.body);
          }
          return basicDataResult.result;
        default:
          throw Exception(response?.statusCode);
      }
    } catch (e, s) {
      print(e.toString());
    }
  }

  getDesignForCu() {
    try {
      var widget = UIWidget?.fromJson(uic);
      return widget.widget();
    } catch (e, s) {
      print(e.toString());
    }
  }
}



// {"gsiId":58301239543,"gsiMasterId":58301239543}