part of 'execution_bloc.dart';

@immutable
abstract class ExecutionEvent {}

class ExecuteGSI extends ExecutionEvent {
  final int? gsiId;
  ExecuteGSI({this.gsiId});
}

class ExecuteChangeUnit extends ExecutionEvent {
  final ChangeUnitTransaction? changeUnitTransaction;
  ExecuteChangeUnit({this.changeUnitTransaction});
}

class InitializeApp extends ExecutionEvent {}