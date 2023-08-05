import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

// part 'ui_container.g.dart';

class BookDesign {
  String? bookId;
}

class GsiDesign {
  String? bookId;
  String? gsiId;
  String? imageLink;
  String? gsiName;
  String? gsiDisplayName;
  GsiDesign({this.bookId, this.gsiId, this.imageLink, this.gsiName, this.gsiDisplayName});
}

@JsonSerializable(explicitToJson: true)
class DynamicListOfWidget extends UIWidget {
  double? height;
  double? width;
  var bet;
  var betList;
  bool generateChildren = false;

  // initialize() async {
  //   class_name = "DynamicListOfWidget";
  //   height ??= 40;
  //   width ??= 40;
  //   if (bet is EntityData) {
  //     List<TxnGeneralEntity> entityList = await nslRepository.getEntityTransactionList(pageNumber: 0, entity: bet);
  //     List<Map> entitiesList = [];
  //     entityList.forEach(
  //       (entity) {
  //         Map attributeKeyValue = {};
  //         entity.transEntityRecords![0]?.txnNslAttribute?.forEach(
  //           (element) {
  //             attributeKeyValue[element?.name ?? ''] = (element?.values?[0] ?? '');
  //           },
  //         );
  //         entitiesList.add(attributeKeyValue);
  //       },
  //     );
  //     betList = entitiesList;
  //   } else if (bet is BookContent) {
  //     betList??=[];
  //     // List<GsiDesign> gsiDesignList = [];

  //     // List<CU> solutionList = await nslRepository.getSolutionsListInBook(bookId: bet.id!.toString());
  //     List<GsiDesign> solutionList = await nslRepository.getGsiListWithDesign(bookId: bet.id!.toString());

  //     for (var gsiDesign in solutionList) {
  //         Map gsiDesignKeyValue = {};
  //         gsiDesignKeyValue['bookId'] = bet.id;
  //         gsiDesignKeyValue['gsiId'] = gsiDesign.gsiId;
  //         gsiDesignKeyValue['imageLink'] = gsiDesign.imageLink;
  //         gsiDesignKeyValue['gsiName'] = gsiDesign.gsiName;
  //         gsiDesignKeyValue['gsiDisplayName'] = gsiDesign.gsiDisplayName;
  //         betList.add(gsiDesignKeyValue);
  //       }
  //     // betList = solutionList;
  //     // betList??=[];
  //     // solutionList.forEach((element) {
  //     //   betList.add(element.toJson());
  //     // });
  //     // all solutions in book - book name,
  //   }
  // }

  DynamicListOfWidget({Key? key, this.bet}) : super(key: key, isContainer: true, hasChildren: false, hasChild: true) {
    // initialize();
  }

  DynamicListOfWidget.name({Key? key, this.bet})
      : super(key: key, hasChildren: false, isContainer: true, hasChild: true) {
    // initialize();
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget, var item}) {
    Widget widget = Container(
      key: widgetKey,
      padding: const EdgeInsets.all(2),
      child: child != null
          ? child!.widget(selectedWidget: selectedWidget, hoveredWidget: hoveredWidget)
          : const Center(
              child: Text(
                'Drop Widget',
              ),
            ),
    );
    return widget;
  }

  @override
  List<Widget> widgetList({UIWidget? selectedWidget, UIWidget? hoveredWidget, var item}) {
    // if we are in design time - return single object.
    // if we are not in design time, return children

    // if ((generatedChildrenIndex != null) && (index <= (generatedChildrenIndex ?? -1))) {
    //             return children[index].widget(selectedWidget: selectedWidget, hoveredWidget: hoveredWidget);
    //           } else if ((generatedChildrenIndex != null) &&
    //               (index > (generatedChildrenIndex ?? -1)) &&
    //               (index <= ((generatedChildrenIndex ?? -1) + (generatedChildren!.length)))) {
    //             return generatedChildren![index - (generatedChildrenIndex! + 1)];
    //           } else {
    //             return children[index - (generatedChildren?.length ?? 0)]
    //                 .widget(selectedWidget: selectedWidget, hoveredWidget: hoveredWidget);
    //           }

    List<Widget> widgetList = [];
    // List<Map> entitiesList = betList;F

    for (var keyValue in betList) {
      child?.keyValue = json.encode(keyValue);

      // if keyValue exists (in generated list) add to all its children
      // child?.keyForValue = 'age';
      // child!.dynamicValue = json.encode(keyValue);
      try {
        widgetList.add(UIWidget?.fromJson(child!.toJson()).widget());
      } catch (e, s) {
        print('someerror');
      }
    }
    return widgetList;
  }

  // you have a parent -
  // you have entity data -
  // on press of generate data - call the method to add children at index to the parent widget.
  // cannot show these children in parent's children configuration section. We will show only DynamicWidgetList. they cannot be highlighted or selected.
  // for that need to return widget objects without highlight. meaning need to create the widgets without using UIWidget widget.
  // or can create using UIWidget widget but have a different method to return only the widget without key.

  // dynamic _generateWidgetList() {
  //   // var keyValueList = betList.toJson();

  //   GlobalVariable.currentPage!.selectedWidget?.parent!.generatedChildren = [];

  //   for (var ch in GlobalVariable.currentPage!.selectedWidget?.parent!.children ?? []) {
  //     if (ch is DynamicListOfWidget) {
  //       int? index = GlobalVariable.currentPage!.selectedWidget?.parent!.children.indexOf(ch);

  //       GlobalVariable.currentPage!.selectedWidget?.parent!.generatedChildrenIndex = index;

  //       List<Map> entitiesList = betList;

  //       for (var keyValue in entitiesList) {
  //         child?.keyValue = json.encode(keyValue);

  //         // if keyValue exists (in generated list) add to all its children
  //         // child?.keyForValue = 'age';
  //         // child!.dynamicValue = json.encode(keyValue);
  //         try {
  //           GlobalVariable.currentPage!.selectedWidget?.parent!.generatedChildren
  //               ?.add(UIWidget?.fromJson(child!.toJson()).widget());
  //         } catch (e, s) {
  //           print('someerror');
  //         }
  //       }
  //     }
  //   }
  // }

  @override
  List getBetList() {
    return ['1', '2'];
  }

  // return widget(
  //   widget,
  //   selectedWidget,
  //   hoveredWidget,
  // ) {
  //   return widget;
  // }

  // factory DynamicListOfWidget.fromJson(Map<String, dynamic> json) {
  //   var wid = _$DynamicListOfWidgetFromJson(json);
  //   wid._heightController.text = wid.height != null ? '${wid.height}' : '40';
  //   wid._widthController.text = wid.width != null ? '${wid.width}' : '';
  //   return wid;
  // }

  // Map<String, dynamic> toJson() {
  //   var json = _$DynamicListOfWidgetToJson(this);
  //   return json;
  // }
}
