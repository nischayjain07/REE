import 'dart:convert';

import 'package:execution_engine/Execution/models/execute_change_unit.dart';
import 'package:execution_engine/Execution/models/gsi_basic_data.dart';
import 'package:execution_engine/Execution/repository/execution_repository.dart';
import 'package:execution_engine/NSL_Integration/model/nsl_attributes.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'execution_event.dart';
part 'execution_state.dart';

Map attributeList = {};

class ExecutionBloc extends Bloc<ExecutionEvent, ExecutionState> {
  ExecutionBloc() : super(ExecutionInitial()) {
    GsiBasicData? _currentGsiBasicData;
    ChangeUnitTransaction _changeUnitTransaction;

    // get gsi basic data

    // fetch change unit(gsiId, masterId)

    // on submit send to change unit

    // response - send to change unit.

    on<ExecuteGSI>((event, emit) async {
      // Map data = {'gsiId': event.gsiId, 'createTransaction': true, 'bookId': event.bookId, 'gsiMasterId': event.gsiMasterId};

      // get gsi ID,
      _currentGsiBasicData = await executionRepository.getGsiBasicData(event.gsiId);

      // you will get gsi master ID.

      // fetch gsi details.
      // fetch change unit
      _changeUnitTransaction =
          ChangeUnitTransaction(gsiId: _currentGsiBasicData?.id, gsiMasterId: _currentGsiBasicData?.masterId);

      add(ExecuteChangeUnit(changeUnitTransaction: _changeUnitTransaction));
    });

    on<ExecuteChangeUnit>((event, emit) async {
      _changeUnitTransaction = await executionRepository.changeUnit(event.changeUnitTransaction);
      attributeList = {};

      if (_changeUnitTransaction.currentCU != null) {
        // get entity list of cu. How will you reference it with all the attributes?
        _changeUnitTransaction.currentCU?.layers?.forEach((layer) {
          var nslAttribute = NslAttributes();
          nslAttribute.attributeType?.uiElement?.uiElement;
          attributeList[nslAttribute.id!] = nslAttribute;
        });

        Widget? widget = executionRepository.getDesignForCu();
        emit(ChangeUnitScreen(changeUnitScreen: widget));
      }

      // for _changeUnitTransaction fetch the design template
      // create the whole page widget and emit from here.

      // get change unit id.
      // fetch change unit
      // for the change unit - fetch the UI file/template.

      // to fetch the UI file. Imagine we already have a UI file stored with cu id with cu as prefix

      // once results are fetched - emit the state - with CU object in the UI file method.
    });

    // so somehow the UI file should return a method which takes CU object as input.
    // we need to limit parsing. but in the cu object how will we parse all the attributes and entities and place it in the right places?
  }
}
