import 'package:execution_engine/Execution/bloc/execution_bloc.dart';
import 'package:execution_engine/Execution/execution.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/cu.dart';
import 'package:execution_engine/auth/authentication.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import 'my_library_reposiroty.dart';

class SolutionList extends StatefulWidget {
  const SolutionList({super.key});

  @override
  State<SolutionList> createState() => _SolutionListState();
}

class _SolutionListState extends State<SolutionList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: MyLibrarySolutionsList(),
      ),
    );
  }
}

class MyLibrarySolutionsList extends StatefulWidget {
  const MyLibrarySolutionsList({super.key});

  @override
  State<MyLibrarySolutionsList> createState() => _MyLibrarySolutionsListState();
}

class _MyLibrarySolutionsListState extends State<MyLibrarySolutionsList> {
  List<DropdownMenuItem<String>> cuListDropdownItems = [];
  @override
  initState() {
    fetchBet('');
    super.initState();
  }

  fetchBet(String searchString) async {
    List<CU> allBets = await myLib.getSolutionsList(searchText: searchString);
    return allBets;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TypeAheadField<CU>(
        textFieldConfiguration: TextFieldConfiguration(
          autofocus: true,
          style: DefaultTextStyle.of(context).style.copyWith(fontStyle: FontStyle.italic),
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Search Solution',
            labelText: 'Solution',
          ),
        ),
        suggestionsCallback: (pattern) async {
          return await fetchBet(pattern);
        },
        itemBuilder: (context, suggestion) {
          return ListTile(
            title: Text(suggestion.name ?? ''),
          );
        },
        onSuggestionSelected: (suggestion) async {
          // ExecuteGsi();
          Navigator.push(context, MaterialPageRoute(
              builder: ((context) => BlocProvider(
                  create: (context) => ExecutionBloc()..add(ExecuteGSI(gsiId: suggestion.id)),
                  child: const ExecuteGsi()))));
        },
      ),
    );
  }
}
