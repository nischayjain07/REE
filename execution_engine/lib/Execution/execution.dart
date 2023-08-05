import 'package:execution_engine/Execution/bloc/execution_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExecuteGsi extends StatefulWidget {
  const ExecuteGsi({super.key});

  @override
  State<ExecuteGsi> createState() => _ExecuteGsiState();
}

class _ExecuteGsiState extends State<ExecuteGsi> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExecutionBloc, ExecutionState>(
      builder: (context, state) {
        if (state is ChangeUnitScreen) {
          return state.changeUnitScreen!;
        } else if (state is LoadingPage) {
          return CircularProgressIndicator();
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
