import 'package:execution_engine/Execution/execution.dart';
import 'package:execution_engine/my_library/my_library_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.from(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue), useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: const SolutionList(),
    ),
  );
}




// Take In GSIs and execute

// how will you map the attributes and entities? - do you only need to map attributes?