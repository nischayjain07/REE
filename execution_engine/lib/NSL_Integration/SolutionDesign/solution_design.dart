// import 'dart:convert';

// import 'package:execution_engine/NSL_Integration/SolutionDesign/model/agents.dart';
// import 'package:execution_engine/constants.dart';
// import 'package:flutter/material.dart';

// import 'package:http/http.dart' as http;

// import 'package:execution_engine/site_builder/widgets/models/gsiList.dart' hide Ontology;

// SolutionDesign sd = SolutionDesign();

// Map<dynamic, dynamic> removeNullsFromMap(Map<dynamic, dynamic> json) => json
//   ..removeWhere((dynamic key, dynamic value) => value == null)
//   ..map<dynamic, dynamic>((key, value) => MapEntry(key, removeNulls(value)));

// List removeNullsFromList(List list) => list
//   ..removeWhere((value) => value == null)
//   ..map((e) => removeNulls(e)).toList();

// removeNulls(e) => (e is List) ? removeNullsFromList(e) : (e is Map<String, dynamic> ? removeNullsFromMap(e) : e);

// extension ListExtension on List {
//   List removeNulls() => removeNullsFromList(this);
// }

// extension MapExtension on Map<dynamic, dynamic> {
//   Map removeNulls() => removeNullsFromMap(this);
// }

// class SolutionDesign {
//   GSI? _gsi;

//   CU? _draftCU;

//   ItemData? _draftEntity;

//   createGSIInstance(String? gsiName) {
//     _gsi = GSI(
//       name: gsiName,
//       displayName: gsiName,
//       cuType: StringConstants.gsi,
//       status: SolutionCanvasStringConstants.draft,
//       dsdStatus: SolutionCanvasStringConstants.draft,
//       agents: [Agent(agentType: 'human')],
//       solutionLogic: [],
//       subOrdinateCUList: [],
//     );
//     return _gsi;
//   }

//   createCuInstance({String? cuName}) {
//     _draftCU = CU(
//       name: cuName,
//       cuType: "BASIC",
//       index: GlobalVariable.currentGsi?.solutionLogic?.length,
//       pageWidgets: [UIScaffold.name(key: UniqueKey(), pageName: 'New Page')],
//       agents: [Agent(agentType: 'human')],
//       status: SolutionCanvasStringConstants.draft,
//       dsdStatus: SolutionCanvasStringConstants.draft,
//     );
//     return _draftCU;
//   }

//   createEntityInstance({String? entityName, String? entityDisplayName, List<NslAttributes>? attributesList}) {
//     _draftEntity = ItemData(
//         name: entityName,
//         displayName: entityDisplayName,
//         status: SolutionCanvasStringConstants.draft,
//         dsdStatus: SolutionCanvasStringConstants.draft,
//         isMultiValue: false,
//         nslAttributes: attributesList);
//     return _draftEntity;
//   }

//   Future draftGsi(GSI draftGSI) async {
//     draftGSI.cuType = SolutionCanvasStringConstants.basicCuType;
//     draftGSI.status = SolutionCanvasStringConstants.draft;
//     draftGSI.dsdStatus = SolutionCanvasStringConstants.draft;
//     Map<dynamic, dynamic> requestBody = draftGSI.toJson();
//     requestBody = requestBody.removeNulls();
//     var response;
//     try {
//       String url = 'https://$environment/dsd-orch/dsd-bets-store/tenant/gsi';
//       response = await http.post(Uri.parse(url), headers: getHeaders(), body: jsonEncode(requestBody));
//       showSnackBar(
//           message: '${response.statusCode} ${jsonDecode(response?.body)['message']} ', duration: 3, width: 500);
//       switch (response.statusCode) {
//         case 401:
//           break;
//         case 200:
//           GSI gsiResponse;
//           var responseBody = jsonDecode(response.body);
//           gsiResponse = GSI.fromJson(responseBody['result']);
//           _gsi = gsiResponse;
//           return _gsi;
//         default:
//           throw Exception('${response.statusCode} ${response.data}');
//       }
//     } catch (e, s) {
//       rethrow;
//     }
//   }

//   draftEntity({
//     ItemData? itemData,
//     String? entityDisplayName,
//     String? configuration,
//     List<TimeRights>? designTimeRights,
//     List<TimeRights>? txnTimeRights,
//     Metadata? metaData,
//   }) async {
//     try {
//       _draftEntity = itemData;
//       _draftEntity?.status = SolutionCanvasStringConstants.draft;
//       _draftEntity?.dsdStatus = SolutionCanvasStringConstants.draft;
//       _draftEntity?.displayName = entityDisplayName ?? _draftEntity?.name;
//       _draftEntity?.configuration = configuration;
//       _draftEntity?.designTimeRights =
//           designTimeRights?.isNotEmpty == true ? List.from(designTimeRights!) : _draftEntity?.designTimeRights;
//       _draftEntity?.txnTimeRights =
//           txnTimeRights?.isNotEmpty == true ? List.from(txnTimeRights!) : _draftEntity?.txnTimeRights;
//       _draftEntity?.description = metaData?.description;
//       _draftEntity?.keywords ??= [];
//       // if (_draftEntity?.keywords?.isEmpty == true) _draftEntity?.keywords?.add((metaData?.keyWords));
//       // _draftEntity?.keywords?[0] = (metaData?.keyWords)!;
//       // _draftEntity?.ontology = [];
//       // _draftEntity?.ontology = (metaData?.ontology)!.cast<Ontology>();
//       var requestBody = _draftEntity?.toJson();
//       for (var element in requestBody?['nslAttributes'] as List) {
//         element.removeWhere((key, value) {
//           if (value == null) return true;
//           return false;
//         });
//         if (element['generalEntity'] != null) {
//           (element['generalEntity'] as Map<String, dynamic>).removeWhere((key, value) {
//             if (value == null) return true;
//             return false;
//           });
//         }
//       }
//       requestBody?.removeWhere((key, value) {
//         if (value == null) return true;
//         return false;
//       });
//       var response;

//       String url = 'https://$environment/dsd-orch/dsd-bets-store/tenant/entity';
//       response = await http.post(Uri.parse(url), headers: getHeaders(), body: jsonEncode(requestBody));
//       showSnackBar(
//           message: '${response.statusCode} ${jsonDecode(response?.body)['message']} ', duration: 3, width: 500);
//       switch (response.statusCode) {
//         case 401:
//           break;
//         case 200:
//           ItemData entityResponse;
//           var responseBody = jsonDecode(response?.body);
//           entityResponse = ItemData.fromJson(responseBody['result']);
//           _draftEntity = entityResponse;
//           Metadata metaData = Metadata(
//               description: _draftEntity?.description ?? '',
//               keyWords: _draftEntity?.keywords?.join() ?? '',
//               ontology: _draftEntity?.ontology?.cast<Ontology>());
//           _draftEntity?.description = metaData.description;
//           _draftEntity?.keywords ??= [];
//           if (_draftEntity?.keywords?.isEmpty == true) _draftEntity?.keywords?.add((metaData.keyWords));
//           _draftEntity?.keywords?[0] = (metaData.keyWords);
//           _draftEntity?.ontology = [];
//           _draftEntity?.ontology = (metaData.ontology)!.cast<Ontology>();

//           return _draftEntity;
//         default:
//           var responseBody = jsonDecode(response.body);
//           throw Exception('${response.statusCode} $responseBody');
//       }
//     } catch (e, s) {
//       logger.e(e.toString());
//       rethrow;
//     }
//   }

//   Future draftCu(CU? draftCu) async {
//     try {
//       // draftCu?.status = SolutionCanvasStringConstants.draft; ""
//       // draftCu?.dsdStatus = SolutionCanvasStringConstants.draft; ""
//       // source"UserCreated"

//       var requestBody = draftCu?.toJson();
//       requestBody?.removeWhere((key, value) {
//         if (value == null) return true;
//         return false;
//       });
//       var response;
//       String url = 'https://$environment/dsd-orch/dsd-bets-store/tenant/change-unit';
//       response = await http.post(Uri.parse(url), body: jsonEncode(requestBody), headers: getHeaders());
//       showSnackBar(
//           message: '${response.statusCode} ${jsonDecode(response?.body)['message']} ', duration: 3, width: 500);
//       switch (response?.statusCode) {
//         case ApiStatus.unauthorizedCode:
//           throw Exception(StringConstants.unauthorized);
//         case ApiStatus.successCode:
//           CU cuResponse;

//           var responseBody = jsonDecode(response.body);
//           cuResponse = CU?.fromJson(responseBody['result']);
//           _draftCU = cuResponse;
//           _draftCU?.pageWidgets = draftCu?.pageWidgets;
//           return _draftCU;
//         default:
//           throw Exception('${response?.statusCode} ${response?.data}');
//       }
//     } catch (e, s) {
//       logger.e('Error in draft cu ${e.toString()}, ${s.toString()}');
//       throw Exception(e);
//     }
//   }

//   reviewGsi(GSI draftGSI) {}

//   finishGsi(GSI draftGSI) async {
//     draftGSI.cuType = SolutionCanvasStringConstants.basicCuType;
//     draftGSI.status = SolutionCanvasStringConstants.draft;
//     List<CU> tempCUs = draftGSI.solutionLogic ?? [];
//     if (tempCUs.isNotEmpty) {
//       for (var cu in tempCUs) {
//         if (cu.cuType == StringConstants.gsi) {
//           cu.solutionLogic = null;
//         }
//       }
//     }

//     draftGSI.solutionLogic?.forEach((cu) {
//       for(int i = 0; i < (cu.layers?.length??0); i++){
//         if(cu.layers?[i].participatingItems?.isNotEmpty == false){
//           cu.layers?.removeAt(i);
//         }
//       }
//     });
//     var requestBody = draftGSI.toJson();
//     requestBody.removeWhere((key, value) {
//       if (value == null) return true;
//       return false;
//     });
//     var response;
//     try {
//       String url = 'https://$environment/dsd-orch/dsd-bets-store/tenant/finish/gsi';
//       response = await http.post(Uri.parse(url), headers: getHeaders(), body: jsonEncode(requestBody));
//       showSnackBar(
//           message: '${response.statusCode} ${jsonDecode(response?.body)['message']} ', duration: 3, width: 500);
//       switch (response.statusCode) {
//         case 401:
//           break;
//         case 200:
//           GSI gsiResponse;
//           var responseBody = jsonDecode(response.body);
//           gsiResponse = GSI.fromJson(responseBody['result']);
//           _gsi = gsiResponse;
//           return _gsi;
//         default:
//           throw Exception('${response.statusCode} ${response.data}');
//       }
//     } catch (e) {
//       rethrow;
//     }
//   }

//   Future publishGsi(GSI draftGSI) async {
//     List<CU> tempCUs = draftGSI.solutionLogic ?? [];
//     for (var cu in tempCUs) {
//       if (cu.cuType == StringConstants.gsi) {
//         cu.solutionLogic = null;
//       }
//     }
//     var requestBody = draftGSI.toJson();
//     requestBody.removeWhere((key, value) {
//       if (value == null) return true;
//       return false;
//     });
//     var response;
//     try {
//       String url = 'https://$environment/dsd-orch/dsd-bets-store/tenant/publish/gsi';
//       response = await http.post(Uri.parse(url), body: jsonEncode(requestBody), headers: getHeaders());
//       showSnackBar(
//           message: '${response.statusCode} ${jsonDecode(response?.body)['message']} ', duration: 3, width: 500);
//       switch (response.statusCode) {
//         case 401:
//           break;
//         case 200:
//           var responseBody = jsonDecode(response.body);
//           return responseBody['message'];
//         default:
//           throw Exception('${response.statusCode} ${response.data}');
//       }
//     } catch (e) {
//       rethrow;
//     }
//   }

//   editCu() {
//     TextEditingController cuNameController = TextEditingController(text: GlobalVariable.currentCu?.name);

//     if (GlobalVariable.currentCu == null) return;
//     List<MyNode> layersWidgetList = [];
//     if (GlobalVariable.currentCu?.layers?.isNotEmpty == true) {
//       GlobalVariable.currentCu?.layers?.forEach((layer) {
//         List<MyNode> entityList = [];
//         if (layer.participatingItems?.isNotEmpty == true) {
//           layer.participatingItems?.forEach(
//             (entity) {
//               List<MyNode> attributesList = [];
//               if (entity.item?.data?.nslAttributes?.isNotEmpty == true) {
//                 entity.item?.data?.nslAttributes?.forEach((attribute) {
//                   attributesList.add(MyNode(title: attribute.name!));
//                 });
//               }
//               entityList.add(MyNode(title: entity.item?.data?.name ?? '', children: attributesList));
//             },
//           );
//         }
//         layersWidgetList.add(MyNode(title: layer.type!, children: entityList));
//       });
//     }

//     var requestBody = GlobalVariable.currentCu?.toJson();
//     List<Widget> cuDetails = [];

//     requestBody?.forEach((key, value) {
//       if (key != null && value != null && value != '' && value != 'null') {
//         cuDetails.add(Text('$key : $value'));
//       }
//     });

//     showDialog(
//       context: GlobalVariable.ctx!,
//       builder: (_) => AlertDialog(
//         title: Text('Edit CU'),
//         content: Container(
//           width: 600,
//           height: 500,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Container(
//                         width: 150,
//                         child: TextField(
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(
//                               borderSide: BorderSide(color: Theme.of(_).colorScheme.onBackground, width: 1.0),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Theme.of(_).colorScheme.onBackground, width: 2.0),
//                             ),
//                             labelStyle: TextStyle(color: Theme.of(_).colorScheme.onBackground),
//                             hintStyle: TextStyle(color: Color(0xFFCCCCCC)),
//                             labelText: 'Change Unit Name',
//                           ),
//                           controller: cuNameController,
//                           onChanged: (value) => GlobalVariable.currentCu?.name = value,
//                         ),
//                       ),
//                       Container(height: 200, width: 200, child: ListView(children: cuDetails)),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 400,
//                     width: 300,
//                     child: MyTreeView(
//                         roots: [MyNode(title: GlobalVariable.currentCu?.name ?? '', children: layersWidgetList)]),
//                   ),
//                 ],
//               ),
//               ElevatedButton(
//                 child: Text(
//                   'Save CU',
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 onPressed: () async {
//                   GlobalVariable.currentCu = await sd.draftCu(GlobalVariable.currentCu);
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   editGsi() {
//     TextEditingController gsiNameController = TextEditingController(text: GlobalVariable.currentGsi?.name);

//     if (GlobalVariable.currentGsi == null) return;
//     List<MyNode> cuWidgetList = [];
//     GlobalVariable.currentGsi?.solutionLogic?.forEach((cu) {
//       List<MyNode> layersWidgetList = [];
//       if (cu.layers?.isNotEmpty == true) {
//         cu.layers?.forEach((layer) {
//           List<MyNode> entityList = [];
//           if (layer.participatingItems?.isNotEmpty == true) {
//             layer.participatingItems?.forEach(
//               (entity) {
//                 List<MyNode> attributesList = [];
//                 if (entity.item?.data?.nslAttributes?.isNotEmpty == true) {
//                   entity.item?.data?.nslAttributes?.forEach((attribute) {
//                     attributesList.add(MyNode(title: attribute.name!));
//                   });
//                 }
//                 entityList.add(MyNode(title: entity.item?.data?.name ?? '', children: attributesList));
//               },
//             );
//           }
//           layersWidgetList.add(MyNode(title: layer.type!, children: entityList));
//         });
//       }
//       cuWidgetList.add(MyNode(title: cu.name ?? '', children: layersWidgetList));
//     });

//     var requestBody = GlobalVariable.currentGsi?.toJson();
//     List<Widget> gsiDetails = [];

//     requestBody?.forEach((key, value) {
//       if (key != null && value != null && value != '' && value != 'null') {
//         gsiDetails.add(Text('$key : $value'));
//       }
//     });

//     showDialog(
//       context: GlobalVariable.ctx!,
//       builder: (_) => AlertDialog(
//         title: Text('Edit GSI'),
//         content: Container(
//           width: 600,
//           height: 500,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Container(
//                         width: 150,
//                         child: TextField(
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(
//                               borderSide: BorderSide(color: Theme.of(_).colorScheme.onBackground, width: 1.0),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Theme.of(_).colorScheme.onBackground, width: 2.0),
//                             ),
//                             labelStyle: TextStyle(color: Theme.of(_).colorScheme.onBackground),
//                             hintStyle: TextStyle(color: Color(0xFFCCCCCC)),
//                             labelText: 'GSI Name',
//                           ),
//                           controller: gsiNameController,
//                           onChanged: (value) => GlobalVariable.currentGsi?.name = value,
//                         ),
//                       ),
//                       Container(height: 200, width: 200, child: ListView(children: gsiDetails)),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 400,
//                     width: 300,
//                     child: MyTreeView(
//                         roots: [MyNode(title: GlobalVariable.currentGsi?.name ?? '', children: cuWidgetList)]),
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   ElevatedButton(
//                     child: Text(
//                       'Draft GSI',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     onPressed: () async {
//                       GlobalVariable.currentGsi = await sd.draftGsi(GlobalVariable.currentGsi!);
//                     },
//                   ),
//                   if ((GlobalVariable.currentGsi?.solutionLogic?.length ?? 0) > 0 &&
//                       (GlobalVariable.currentGsi?.status == SolutionCanvasStringConstants.draft ||
//                           GlobalVariable.currentGsi?.status == 'REJECTED'))
//                     ElevatedButton(
//                       child: Text(
//                         'Finish GSI',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       onPressed: () async {
//                         GlobalVariable.currentGsi = await sd.finishGsi(GlobalVariable.currentGsi!);
//                       },
//                     ),
//                   if (GlobalVariable.currentGsi?.status == SolutionCanvasStringConstants.readyState)
//                     ElevatedButton(
//                       child: Text(
//                         'Review',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       onPressed: () async {
//                         GlobalVariable.currentGsi = await sd.reviewGsi(GlobalVariable.currentGsi!);
//                       },
//                     ),
//                   if (GlobalVariable.currentGsi?.status == SolutionCanvasStringConstants.readyState)
//                     ElevatedButton(
//                       child: Text(
//                         'Publish GSI',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       onPressed: () async {
//                         GlobalVariable.currentGsi = await sd.publishGsi(GlobalVariable.currentGsi!);
//                       },
//                     ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   ItemData? editEntity({UIWidget? widget}) {
//     if (widget?.participatingItem == null || widget?.participatingItem?.item?.data == null) return null;
//     ItemData? itemData = widget?.participatingItem?.item?.data;
//     TextEditingController entityNameController = TextEditingController(text: itemData?.name);

//     List<MyNode> attributesList = [];
//     if (itemData?.nslAttributes?.isNotEmpty == true) {
//       itemData?.nslAttributes?.forEach((attribute) {
//         attributesList.add(MyNode(title: attribute.name!));
//       });
//     }

//     var requestBody = GlobalVariable.currentCu?.toJson();
//     List<Widget> entityDetails = [];

//     requestBody?.forEach((key, value) {
//       if (key != null && value != null && value != '' && value != 'null') {
//         entityDetails.add(Text('$key : $value'));
//       }
//     });

//     showDialog(
//       context: GlobalVariable.ctx!,
//       builder: (_) => AlertDialog(
//         title: Text('Edit Entity'),
//         content: Container(
//           width: 600,
//           height: 500,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Container(
//                         width: 150,
//                         child: TextField(
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(
//                               borderSide: BorderSide(color: Theme.of(_).colorScheme.onBackground, width: 1.0),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Theme.of(_).colorScheme.onBackground, width: 2.0),
//                             ),
//                             labelStyle: TextStyle(color: Theme.of(_).colorScheme.onBackground),
//                             hintStyle: TextStyle(color: Color(0xFFCCCCCC)),
//                             labelText: 'Entity Name',
//                           ),
//                           controller: entityNameController,
//                           onChanged: (value) => itemData?.name = value,
//                         ),
//                       ),
//                       Text('status: ${itemData?.status}'),
//                       if (itemData?.id != null) Text('Entity Id: ${itemData?.id}'),
//                       Container(height: 200, width: 200, child: ListView(children: entityDetails)),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 400,
//                     width: 300,
//                     child: MyTreeView(roots: [MyNode(title: itemData?.name ?? '', children: attributesList)]),
//                   ),
//                 ],
//               ),
//               ElevatedButton(
//                 child: Text(
//                   'Save Entity',
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 onPressed: () async {
//                   itemData = await sd.draftEntity(itemData: itemData);
//                   widget?.participatingItem?.item?.data = itemData;
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//     return itemData;
//   }

//   Layer? addEntitiesToLayer(List<ItemData> entityList, String layerType) {
//     Layer layer = Layer(type: layerType, label: layerType);
//     layer.participatingItems = [];
//     for (var entity in entityList) {
//       {
//         layer.participatingItems?.add(ParticipatingItem(
//             item: Item(
//           type: SolutionCanvasStringConstants.itemType,
//           data: entity,
//         )));
//       }
//     }
//     return layer;
//   }

//   // https://narayana.carnivalsb.nslhub.com/dsd-orch/nslgrammar/cu_validate

//   // get roles
//   // https://narayana.carnivalsb.nslhub.com/dsd-orch/nsl-iam/api/roles/getAllRoles?pageNumber=0&pageSize=15&viewGuestRole=true
//   // add rights

//   // finalItemData.forEach((element) => {
//   //             cuRepository.addEntityInLayer(
//   //                 activeCuSection: event.layerType,
//   //                 items: ParticipatingItem(item: Item(type: SolutionCanvasStringConstants.itemType, data: element)),
//   //                 currentLayer: currentLayer)
//   //           });

//   // SolutionCanvasStringConstants.information
//   // SolutionCanvasStringConstants.triggerCes
//   // SolutionCanvasStringConstants.physical
// }

// class MyNode {
//   const MyNode({
//     required this.title,
//     this.children = const <MyNode>[],
//   });

//   final String title;
//   final List<MyNode> children;
// }

// class MyTreeView extends StatefulWidget {
//   List<MyNode>? roots = [];
//   MyTreeView({super.key, this.roots});

//   @override
//   State<MyTreeView> createState() => _MyTreeViewState();
// }

// class _MyTreeViewState extends State<MyTreeView> {
//   late final TreeController<MyNode> treeController;

//   @override
//   void initState() {
//     super.initState();
//     treeController = TreeController<MyNode>(
//       // Provide the root nodes that will be used as a starting point when
//       // traversing your hierarchical data.
//       roots: widget.roots!,
//       // Provide a callback for the controller to get the children of a
//       // given node when traversing your hierarchical data. Avoid doing
//       // heavy computations in this method, it should behave like a getter.
//       childrenProvider: (MyNode node) => node.children,
//     );
//   }

//   @override
//   void dispose() {
//     treeController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return TreeView<MyNode>(
//       treeController: treeController,
//       nodeBuilder: (BuildContext context, TreeEntry<MyNode> entry) {
//         return MyTreeTile(
//           key: ValueKey(entry.node),
//           entry: entry,
//           onTap: () => treeController.toggleExpansion(entry.node),
//         );
//       },
//     );
//   }
// }

// class MyTreeTile extends StatelessWidget {
//   const MyTreeTile({
//     super.key,
//     required this.entry,
//     required this.onTap,
//   });

//   final TreeEntry<MyNode> entry;
//   final VoidCallback onTap;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       // Wrap your content in a TreeIndentation widget which will properly
//       // indent your nodes (and paint guides, if required).
//       //
//       // If you don't want to display indent guides, you could replace this
//       // TreeIndentation with a Padding widget, providing a padding of
//       // `EdgeInsetsDirectional.only(start: TreeEntry.level * indentAmount)`
//       child: TreeIndentation(
//         entry: entry,
//         // Provide an indent guide if desired. Indent guides can be used to
//         // add decorations to the indentation of tree nodes.
//         // This could also be provided through a DefaultTreeIndentGuide
//         // inherited widget placed above the tree view.
//         guide: const IndentGuide.connectingLines(indent: 48),
//         // The widget to render next to the indentation. TreeIndentation
//         // respects the text direction of `Directionality.maybeOf(context)`
//         // and defaults to left-to-right.
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(4, 8, 8, 8),
//           child: Row(
//             children: [
//               // Add a widget to indicate the expansion state of this node.
//               // See also: ExpandIcon.
//               FolderButton(
//                 isOpen: entry.hasChildren ? entry.isExpanded : null,
//                 onPressed: entry.hasChildren ? onTap : null,
//               ),
//               Text(entry.node.title),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // TYPE
// // : 
// // "GeneralEntity"


// // "{"result":{"cuExceptions":{"BASIC":[{"errorDetails":[{"errorLevel":"exception","message":"Cannot invoke \"com.nsl.logical.enums.LayerType.getLayerType()\" because the return value of \"com.nsl.dsd.store.models.base.BaseCULayer.getType()\" is null"}]}]}},"path":"/dsd-bets-store/tenant/change-unit","source":"DSD-BETS Store","message":"Cannot invoke \"com.nsl.logical.enums.LayerType.getLayerType()\" because the return value of \"com.nsl.dsd.store.models.base.BaseCULayer.getType()\" is null","status":500,"timestamp":"2023-07-16T02:19:24.487Z"}"
