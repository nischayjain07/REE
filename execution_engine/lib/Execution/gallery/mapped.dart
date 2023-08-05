

import 'package:execution_engine/Execution/gallery/custom_widgets/ui_box_constraints.dart';
import 'package:execution_engine/Execution/gallery/custom_widgets/ui_input_decoration.dart';
import 'package:execution_engine/Execution/gallery/custom_widgets/ui_outlineinput_border.dart';
import 'package:execution_engine/Execution/gallery/nsl_widgets/textfield_ui_control.dart';
import 'package:execution_engine/Execution/gallery/ui_expanded.dart';
import 'package:execution_engine/Execution/gallery/ui_icon.dart';
import 'package:execution_engine/Execution/gallery/ui_icon_button.dart';

import '../gallery/ui_padding.dart';
import 'custom_widgets/ui_border_radius.dart';
import 'gallery.dart';

class Mapped {
  static Map<String, Function> widgets = {
    "UIText": UIText.fromJson,
    "UITextButton": UITextButton.fromJson,
    "UITextStyle": UITextStyle.fromJson,
    "UITextField": UITextField.fromJson,
    "UIListView": UIListView.fromJson,
    "UIRadioListTile": UIRadioListTile.fromJson,
    "UICarousel": UICarousel.fromJson,
    "UICheckBox": UICheckBox.fromJson,
    "UIGridView": UIGridView.fromJson,
    "UIImage": UIImage.fromJson,
    "UIIcon": UIIcon.fromJson,
    "UIIconButton": UIIconButton.fromJson,
    "UIScaffold": UIScaffold.fromJson,
    "UIAppbar": UIAppBar.fromJson,
    "UITemplateWidth": UITemplateWidth.fromJson,
    "UIContainer": UIContainer.fromJson,
    "UISizeBox": UISizeBox.fromJson,
    "UIBoxDecoration": UIBoxDecoration.fromJson,
    "UIColumn": UIColumn.fromJson,
    "UIRow": UIRow.fromJson,
    "UICheckHideTitle": UICheckHideTitle.fromJson,
    "UIPadding": UIPadding.fromJson,
    "UIImageNetwork": UIImageNetwork.fromJson,
    "UIGoogleFontsInter": UIGoogleFontsInter.fromJson,
    "UISingleChildScrollView": UISingleChildScrollView.fromJson,
    "UILoopBetData": UILoopBetData.fromJson,
    "UIInkWell": UIInkWell.fromJson,
    "UIToolTip": UITooltip.fromJson,
    "UIBorderRadius": UIBorderRadius.fromJson,
    "UIDivider": UIDivider.fromJson,
    "UIVerticalDivider": UIVerticalDivider.fromJson,
    "UIInputDecoration": UIInputDecoration.fromJson,
    "UIOutlineInputBorder": UIOutlineInputBorder.fromJson,
    "UIBoxConstraints": UIBoxConstraints.fromJson,
    // "UIEmailID.name": UIEmailIDField.fromJson
    "UIExpanded": UIExpanded.fromJson,
    "UICard": UICard.fromJson,
    "UIDropDown": UIDropDown.fromJson,
    "UICTextField": UICTextField.fromJson
  };
}
