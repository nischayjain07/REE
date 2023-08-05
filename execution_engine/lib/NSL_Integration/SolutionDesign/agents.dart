
//   NslGrammarCollectionPanelBloc collectionPanelBloc;
//   NslGrammarGsiBloc nslGrammarGsiBloc;

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void didChangeDependencies() {
//     collectionPanelBloc = BlocProvider.of<NslGrammarCollectionPanelBloc>(context);
//     nslGrammarGsiBloc = BlocProvider.of<NslGrammarGsiBloc>(context);
//     super.didChangeDependencies();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Center(
//         child: Hero(
//           tag: GrammarStringConstants.token,
//           child: Material(
//             color: Color(ColorConstants.primaryWhite),
//             elevation: 2,
//             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(SpaceConstants.widgetMargin15)),
//             child: BlocListener<NslGrammarCollectionPanelBloc, NslGrammarCollectionPanelState>(
//               listener: (context, state) {},
//               child: BlocBuilder<NslGrammarCollectionPanelBloc, NslGrammarCollectionPanelState>(
//                 // ignore: missing_return
//                 builder: (context, state) {
//                   if (state is GsiAgentsPopup) {
//                     return showAgentsDialog(
//                       isLoading: state.isLoading,
//                       collectionPanelBloc: collectionPanelBloc,
//                       context: context,
//                       nslGrammarGsiBloc: nslGrammarGsiBloc,
//                       agentType: state.agentType,
//                       agents: state.agents ?? [],
//                       allRoles: state.allRoles ?? [],
//                     );
//                   } else {
//                     return Container(child: CircularProgressIndicator());
//                   }
//                 },
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// showAgentsDialog(
//     {BuildContext context,
//     bool isLoading,
//     NslGrammarCollectionPanelBloc collectionPanelBloc,
//     NslGrammarGsiBloc nslGrammarGsiBloc,
//     List<Agents> allRoles,
//     GlobalKey<FormBuilderState> agentsFormKey,
//     String agentType,
//     List<AgentRoles> agents}) {
//   List<Widget> agentsList = [];
//   if (agents?.isNotEmpty == true) {
//     for (int i = 0; i < agents.length; i++) {
//       agentsList.add(
//         Padding(
//           padding: EdgeInsets.all(SpaceConstants.widgetPadding6),
//           child: Card(
//             child: Container(
//               width: 248.w,
//               decoration: BoxDecoration(
//                 color: Color(ColorConstants.primaryWhite),
//                 border: Border.all(color: Color(ColorConstants.grey), width: 1),
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(SpaceConstants.widgetMargin15),
//                 ),
//               ),
//               child: ExpansionTile(
//                 trailing: TextButton(
//                   child: GrammarImgConstants.trashIcon,
//                   onPressed: () {
//                     collectionPanelBloc.add(DeleteAgentInGsi(index: i));
//                   },
//                 ),
//                 children: [
//                   _agentFormField(
//                       context: context, agent: agents[i], agentIndex: i, collectionPanelBloc: collectionPanelBloc),
//                 ],
//                 title:
//                     Text(agents[i]?.rightHolderName ?? '', style: TextStyle(fontSize: FontConstants.fontSizeSecondary)),
//               ),
//             ),
//           ),
//         ),
//       );
//     }
//   }

//   return Column(
//     mainAxisSize: MainAxisSize.min,
//     children: [
//       Container(
//         width: 280.w,
//         height: 40.h,
//         decoration: const BoxDecoration(
//           color: GrammarColorConstants.blueMenuHighlight,
//           borderRadius: BorderRadius.vertical(top: Radius.circular(SpaceConstants.widgetMargin15)),
//         ),
//         child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//           Padding(
//             padding: const EdgeInsets.all(SolutionCanvasSpacingConstants.cardWidgetColumnPadding),
//             child: Text(userGlobal.labels['ADD_AGENT'],
//                 style:
//                     TextStyle(fontWeight: FontWeight.bold, color: Color(ColorConstants.primaryWhite), fontSize: 12.sp)),
//           ),
//           Padding(
//             padding: EdgeInsets.all(SolutionCanvasSpacingConstants.cardWidgetColumnPadding),
//             child: OutlinedButton(
//                 style: OutlinedButton.styleFrom(
//                   primary: Color(ColorConstants.primaryWhite),
//                   side: BorderSide(color: Color(ColorConstants.primaryWhite), width: 1), //<-- SEE HERE
//                 ),
//                 onPressed: () {
//                   nslGrammarGsiBloc.add(UpdateAgentsToGsi(roles: agents, agentType: agentType));
//                   Navigator.pop(context);
//                 },
//                 child: Text(userGlobal.labels['DONE'],
//                     style: TextStyle(color: Color(ColorConstants.primaryWhite), fontSize: 12.sp))),
//           ),
//         ]),
//       ),
//       Container(
//         height: 300,
//         width: 280.w,
//         child: isLoading
//             ? Center(
//                 child: Container(
//                     height: SpaceConstants.containerHeight50,
//                     width: SpaceConstants.containerHeight50,
//                     child: CircularProgressIndicator()))
//             : SingleChildScrollView(
//                 child: (agentsList?.isNotEmpty == true)
//                     ? Column(
//                         children: agentsList,
//                       )
//                     : Center(
//                         child: Container(
//                           child: Text(
//                             userGlobal.labels['SELECT_AGENTS_BELOW'],
//                             style: TextStyle(color: Color(ColorConstants.grey),
//                           ),
//                         ),
//                       ),
//                     ),
//               ),
//       ),
//       Container(
//         width: 280.w,
//         decoration: BoxDecoration(
//           border: Border.all(color: Color(ColorConstants.grey), width: 1),
//           borderRadius: BorderRadius.vertical(bottom: Radius.circular(SpaceConstants.widgetMargin15)),
//         ),
//         child: Padding(
//           padding: EdgeInsets.all(FontConstants.fontSizePrimary),
//           child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
//             Container(
//                 child: FormBuilderRadioGroup(
//                     activeColor: const Color(ColorConstants.primaryRed),
//                     orientation: OptionsOrientation.horizontal,
//                     name: StringConstants.MAP,
//                     initialValue: agentType,
//                     options: [
//                       FormBuilderFieldOption(
//                         value: StringConstants.HUMAN,
//                         child: Text(StringConstants.HUMAN, style: TextStyle(fontSize: FontConstants.fontSizeSecondary)),
//                       ),
//                       FormBuilderFieldOption(
//                           value: StringConstants.MACHINE,
//                           child: Text(StringConstants.MACHINE,
//                               style: TextStyle(fontSize: FontConstants.fontSizeSecondary))),
//                     ],
//                     onChanged: (value) {
//                       if (value == StringConstants.HUMAN) {
//                         agentType = StringConstants.HUMAN;
//                       } else if (value == StringConstants.MACHINE) {
//                         agentType = StringConstants.MACHINE;
//                       }
//                       collectionPanelBloc.add(SetAgentType(agentType: agentType));
//                     })),
//             FormBuilderDropdown(
//               decoration: InputDecoration(
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(SpaceConstants.borderRadius4)),
//                   borderSide: BorderSide(width: 1, color: Color(ColorConstants.grey)),
//                 ),
//               ),
//               hint: Text(userGlobal.labels['SELECT_AGENT']),
//               allowClear: true,
//               items: allRoles?.map((Agents agent) {
//                 return DropdownMenuItem(
//                   onTap: () {
//                     collectionPanelBloc.add(AddAgentsToGsi(agent: agent));
//                   },
//                   value: agent?.name ?? '',
//                   child: Text(agent?.name ?? ''),
//                 );
//               })?.toList(),
//             ),
//           ]),
//         ),
//       ),
//     ],
//   );
// }

// Widget _agentFormField(
//     {AgentRoles agent, int agentIndex, BuildContext context, NslGrammarCollectionPanelBloc collectionPanelBloc}) {
//   List<String> designRights = [];
//   List<String> txnRights = [];
//   if (agent.designTimeRights?.decisionRight == true) {
//     designRights.add(StringConstants.write);
//   }
//   if (agent.designTimeRights?.informationRight == true) {
//     designRights.add(StringConstants.read);
//   }
//   if (agent.txnTimeRights?.decisionRight == true) txnRights.add(StringConstants.write);
//   if (agent.txnTimeRights?.informationRight == true) txnRights.add(StringConstants.read);
//   if (agent.txnTimeRights?.executionRight == true) {
//     txnRights.add(StringConstants.execute);
//   }
//   return Padding(
//     padding: const EdgeInsets.all(SpaceConstants.widgetMargin8),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(top: SpaceConstants.widgetMargin8),
//           child: Text(
//             userGlobal?.labels['SOLUTION_DESIGN'],
//             style: TextStyle(
//               fontSize: FontConstants.fontSizePrimary,
//             ),
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//               child: CheckboxListTile(
//                   activeColor: const Color(ColorConstants.primaryRed),
//                   value: designRights.contains(StringConstants.read) ?? false,
//                   controlAffinity: ListTileControlAffinity.leading,
//                   title: Text(userGlobal.labels['READ']),
//                   onChanged: (value) {
//                     collectionPanelBloc.add(UpdateAgentsRights(
//                         agentId: agent?.rightHolderId,
//                         rightsType: StringConstants.solution,
//                         agentsRightsType: StringConstants.read,
//                         rightsValue: value));
//                   }),
//             ),
//             Expanded(
//               child: CheckboxListTile(
//                   activeColor: const Color(ColorConstants.primaryRed),
//                   value: designRights.contains(StringConstants.write) ?? false,
//                   controlAffinity: ListTileControlAffinity.leading,
//                   title: Text(userGlobal.labels['WRITE']),
//                   onChanged: (value) {
//                     collectionPanelBloc.add(UpdateAgentsRights(
//                         agentId: agent?.rightHolderId,
//                         rightsType: StringConstants.solution,
//                         agentsRightsType: StringConstants.write,
//                         rightsValue: value));
//                   }),
//             ),
//           ],
//         ),
//         Padding(
//           padding: const EdgeInsets.only(top: SpaceConstants.widgetMargin8),
//           child: Text(
//             userGlobal?.labels['TRANSACTION'],
//             style: TextStyle(
//               fontSize: FontConstants.fontSizePrimary,
//             ),
//           ),
//         ),
//         Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Expanded(
//                   child: CheckboxListTile(
//                       activeColor: const Color(ColorConstants.primaryRed),
//                       value: txnRights.contains(StringConstants.read) ?? false,
//                       controlAffinity: ListTileControlAffinity.leading,
//                       title: Text(userGlobal.labels['READ']),
//                       onChanged: (value) {
//                         collectionPanelBloc.add(UpdateAgentsRights(
//                             agentId: agent?.rightHolderId,
//                             rightsType: StringConstants.transaction,
//                             agentsRightsType: StringConstants.read,
//                             rightsValue: value));
//                       }),
//                 ),
//                 Expanded(
//                   child: CheckboxListTile(
//                       activeColor: const Color(ColorConstants.primaryRed),
//                       value: txnRights.contains(StringConstants.write) ?? false,
//                       controlAffinity: ListTileControlAffinity.leading,
//                       title: Text(userGlobal.labels['WRITE']),
//                       onChanged: (value) {
//                         collectionPanelBloc.add(UpdateAgentsRights(
//                             agentId: agent?.rightHolderId,
//                             rightsType: StringConstants.transaction,
//                             agentsRightsType: StringConstants.write,
//                             rightsValue: value));
//                       }),
//                 )
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Expanded(
//                   child: CheckboxListTile(
//                       activeColor: const Color(ColorConstants.primaryRed),
//                       value: txnRights.contains(StringConstants.execute) ?? false,
//                       controlAffinity: ListTileControlAffinity.leading,
//                       title: Text(userGlobal.labels['EXECUTE']),
//                       onChanged: (value) {
//                         collectionPanelBloc.add(UpdateAgentsRights(
//                             agentId: agent?.rightHolderId,
//                             rightsType: StringConstants.transaction,
//                             agentsRightsType: StringConstants.execute,
//                             rightsValue: value));
//                       }),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ],
//     ),
//   );