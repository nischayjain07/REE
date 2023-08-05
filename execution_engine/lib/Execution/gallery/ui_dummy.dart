import 'dart:convert';

import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';


//part 'ui_dummy.g.dart';

//@JsonSerializable(explicitToJson: true)
class UIDummy extends UIWidget {
  UIDummy() {
    class_name = "UIDummy";
  }

  UIDummy.name({Key? key})
      : super(key: key, hasChildren: false, isContainer: false) {
    class_name = "UIDummy";
    // TODO: implement name
    //children.add(UIContainer.name());
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = Container(
      key: widgetKey,
      width: 50,
      height: 50,
    );
    return widget;
  }

  @override
  Widget propertySheet() {
    throw UnimplementedError();
    // return ListView(
    //   children: [
    //     const Text(
    //       'Card properties',
    //       textAlign: TextAlign.left,
    //       style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
    //     ),
    //     const Divider(),
    //     ExpansionPanelList(
    //       animationDuration: const Duration(seconds: 0),
    //       expandedHeaderPadding: const EdgeInsets.all(0),
    //       elevation: 0.0,
    //       children: [
    //         ExpansionPanel(
    //           canTapOnHeader: true,
    //           headerBuilder: (context, isExpanded){
    //             return Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: const [
    //                 Text(
    //                   "Card Properties",
    //                   textAlign: TextAlign.left,
    //                   style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900, fontStyle: FontStyle.italic),
    //                 ),
    //               ],
    //             );
    //           },
    //           body: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Container(
    //                 padding: const EdgeInsets.all(5),
    //                 child:Column(
    //                   children: [
    //                     const SizedBox(height: 5.0),
    //                     Container(
    //                       padding: const EdgeInsets.all(5),
    //                       child:DropdownButtonFormField<Clip>(
    //                           value: clipBehavior,
    //                           decoration: const InputDecoration(
    //                             label: Text('Select Scroll Direction'),
    //                           ),
    //                           items: Clip.values.map((e) {
    //                             return DropdownMenuItem(
    //                               value: e,
    //                               child: Text(e.toString()),
    //                             );
    //                           }).toList(),
    //                           onChanged: (changedValue) {
    //                             clipBehavior = changedValue!;
    //                             BlocProvider.of<SiteBuilderBloc>(GlobalVariable.ctx!)
    //                                 .add(RefreshWidgetEvent(target: this));
    //                           }),
    //                     ),
    //                     const SizedBox(height: 5.0),
    //                     Row(
    //                       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //                       children: const [
    //                         Text("Color ", style: KTextprops),
    //                         Text("Shadow ", style: KTextprops),
    //                         Text("Surface tint", style: KTextprops),
    //                       ],
    //                     ),
    //                     const SizedBox(height: 5.0,),
    //                     Row(
    //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                       children: [
    //                         SizedBox(
    //                           width: 100,
    //                           height: 50,
    //                           child: UIColorPicker(
    //                             pickerColor: Color(color),
    //                             onColorChanged: (colorChanged) {
    //                               color = colorChanged.value;
    //                               //print(color);
    //                               BlocProvider.of<SiteBuilderBloc>(
    //                                   GlobalVariable.ctx!)
    //                                   .add(RefreshWidgetEvent(target: this));
    //                             },
    //                           ),
    //                         ),
    //                         SizedBox(
    //                           width: 100,
    //                           height: 50,
    //                           child: UIColorPicker(
    //                             pickerColor: Color(shadowColor),
    //                             onColorChanged: (colorChanged) {
    //                               shadowColor = colorChanged.value;
    //                               //print(color);
    //                               BlocProvider.of<SiteBuilderBloc>(
    //                                   GlobalVariable.ctx!)
    //                                   .add(RefreshWidgetEvent(target: this));
    //                             },
    //                           ),
    //                         ),
    //                         SizedBox(
    //                           width: 100,
    //                           height: 50,
    //                           child: UIColorPicker(
    //                             pickerColor: Color(surfaceTintColor),
    //                             onColorChanged: (colorChanged) {
    //                               surfaceTintColor = colorChanged.value;
    //                               //print(color);
    //                               BlocProvider.of<SiteBuilderBloc>(
    //                                   GlobalVariable.ctx!)
    //                                   .add(RefreshWidgetEvent(target: this));
    //                             },
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //
    //                   ],
    //                 ),
    //               ),
    //               const SizedBox(height: 5.0),
    //               Container(
    //                 alignment: Alignment.center,
    //                 child:Column(
    //                   children: [
    //                     const Text(
    //                       'Margin',
    //                       textAlign: TextAlign.left,
    //                       style: TextStyle(fontSize: 16.0),
    //                     ),
    //                     const SizedBox(height: 4),
    //                     Container(
    //                       width: 150,
    //                       height: 150,
    //                       padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
    //                       decoration: BoxDecoration(
    //                         border: Border.all(),
    //                         borderRadius: BorderRadius.circular(10),
    //                       ),
    //                       child: Column(
    //                         mainAxisAlignment: MainAxisAlignment.center,
    //                         crossAxisAlignment: CrossAxisAlignment.center,
    //                         children: [
    //                           _marginWidgets(1, marginTCont, 'T'),
    //                           Row(
    //                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                             children: [
    //                               _marginWidgets(0, marginLCont, 'L'),
    //                               Container(
    //                                 decoration: BoxDecoration(
    //                                   color: Colors.grey[200],
    //                                   borderRadius: BorderRadius.circular(10),
    //                                 ),
    //                                 child: Expanded(
    //                                   child: IconButton(
    //                                     onPressed: () {
    //                                       marginLock = !marginLock;
    //                                       BlocProvider.of<SiteBuilderBloc>(GlobalVariable.ctx!)
    //                                           .add(RefreshWidgetEvent(target: this));
    //                                     },
    //                                     icon: const Icon(Icons.lock),
    //                                     color: marginLock==true ? Colors.red:Colors.black,
    //                                   ),
    //                                 ),
    //                               ),
    //                               _marginWidgets(2, marginRCont, 'R'),
    //                             ],
    //                           ),
    //                           _marginWidgets(3, marginBCont, 'B'),
    //                         ],
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               SwitchListTile(
    //                   title: const Text('borderOnForeground'),
    //                   value: borderOnForeground,
    //                   onChanged: (bool value) {
    //                     borderOnForeground = !borderOnForeground;
    //                     BlocProvider.of<SiteBuilderBloc>(GlobalVariable.ctx!)
    //                         .add(RefreshWidgetEvent(target: this));
    //                   }),
    //               SwitchListTile(
    //                   title: const Text('semanticContainer'),
    //                   value: semanticContainer,
    //                   onChanged: (bool value) {
    //                     semanticContainer = !semanticContainer;
    //                     BlocProvider.of<SiteBuilderBloc>(GlobalVariable.ctx!)
    //                         .add(RefreshWidgetEvent(target: this));
    //                   }),
    //             ],
    //           ),
    //           isExpanded: _isOpen[0],
    //         ),
    //       ],
    //       expansionCallback: (int i,isExpanded){
    //         _isOpen[0] = !_isOpen[0];
    //         BlocProvider.of<SiteBuilderBloc>(GlobalVariable.ctx!).add(RefreshWidgetEvent(
    //             target: this));
    //       },
    //     ),
    //   ]
    //       .map(
    //         (e) => Padding(
    //       padding: const EdgeInsets.all(5),
    //       child: e,
    //     ),
    //   )
    //       .toList(),
    // );
  }

  @override
  add(UIWidget widget) {
    children.add(widget);
  }

  @override
  remove(UIWidget widget) {
    children.remove(widget);
  }

  @override
  select() {
    // TODO: implement select
    throw UnimplementedError();
  }

  @override
  swap(UIWidget widget, int x) {
    int index = children.indexOf(widget);
    if (x == 1 && index != 0) {
      children.remove(widget);
      children.insert(index - 1, widget);
    }
    if (x == -1 && index != children.length - 1) {
      children.remove(widget);
      children.insert(index + 1, widget);
    }
  }

  @override
  String generateCode() {
    return '''
 
    ''';
  }
}
