part of 'execution_bloc.dart';

@immutable
abstract class ExecutionState {}

class ExecutionInitial extends ExecutionState {}

class ChangeUnitScreen extends ExecutionState {
  Widget? changeUnitScreen;
  ChangeUnitScreen({this.changeUnitScreen});
}

class LoadingPage extends ExecutionState {
  LoadingPage();
}