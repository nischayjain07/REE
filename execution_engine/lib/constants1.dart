import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const KBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(10)),
  color: Color(0xFFE0E0E0),
);
const KTextStyleTextProperties = TextStyle(fontSize: 15, fontWeight: FontWeight.w100);
const KOutlineBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(5)),
);
const KTextprops = TextStyle(fontSize: 15, fontWeight: FontWeight.w100);
const List<Alignment> alignmentvalues = [
  Alignment.center,
  Alignment.centerLeft,
  Alignment.centerRight,
  Alignment.bottomCenter,
  Alignment.topCenter,
  Alignment.topLeft,
  Alignment.topRight,
  Alignment.bottomLeft,
  Alignment.bottomRight,
];

final List<String> fontWeightValues = [
  "100-Thin",
  "200-Extra light",
  "300-Light",
  "400-Normal",
  "500-Medium",
  "600-Semi Bold",
  "700-Bold",
  "800-Extra Bold",
  "900-Black"
];

const String base64DefaultImage =
    'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGwAAABqCAIAAADWXSOHAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAFiUAABYlAUlSJPAAAAN0SURBVHhe7dzBS9tQAMfx/WNjh+KhbDDoeYwxhngQ3MXCLoLFwxxMPWw72EOxlxZGA5KcUoTKoBXqdgkeimAvhiK80wMhEChL0mcba1vr+jN5jt+XHEraBvLhvSSKvmd9tnBEBEREQEQERERARAREREBEBEREQEQERERARAREREBEBEREQEkh9qz1zIvnsC1v9tSBdSghRGkX7kAstG3aUh1agxJCdPaWxhQW3DJ7jjq0BiWD2DnIjSssuuXKHXXw9EsE8cJ4f3PymeVi81xIT70Ty/k2BMp8nzDMPCnOW/vLwxH9oXah3km9JBCHF8TMmuX6aued7kMc5LvmmnLU57KYAKLX3IposrvNWWc9H2KQbO1ko49ttSYM6DRKANHZj8553RBqx+TmRuz3hZEPP5YtanJzeXzEq+PN3FJ4H5g6kQc9ALHvh3eqTK7QuFI70i2RG0swpe+feA9BDJrjiImVEOIcPRBRp4gIiIiAiAiIiICICIiIgIgIiIiAiAiIiICICIiIgIgIiIiAiAhIG8Tr1s4Icbd5rXY/ibRA9Hodc+PtjWC4vdmwOj2Nfnc9u3QR41N42vYEpjYRAelzY3nCEREQEQERERARAREREBEBEREQEQERERARAREREBEBEREQEQERERARAREREBEBEREQEQERERARAREREBEBEREQEQERERARAREREBEBEREQEQERERARARER0GMjzvzT9lVr9spX0xNO+1+/+gglOxLbFmgZUyICIuJYvjj9kX8drmz3cmXL6qrlAT2nZNxeo03tcfZiFwQ9FkVNG9F3zc1t80x4kZc8sz7nje7A7tqplJ3hv6Z5bcMeLd3JkRhL2mXzUr1W9eq1X4rO+1OttKPX8nfN6Eb7BhFxlGwYd1fjFPbhaJJ2qlVHeqc/67fXUSXiKGGuxi5wwy1+pfO79qft8dFKxFji9MRVL6cVTOSvxdrJ2Hgl4qiJ0zmebJTCiewaxu1FfYkYS9rFGctlC6tsDyay79rV3zFu0bD1Was8bcTwESf/cf+oKwf3DU90j6zGRcTVqx/Efyy8rFeOhqNR2F+q6klIg9JGDAoetkuFlVfhLSX7rlA5ieCCoVc6HluW2z28GZjhY2M5/Ioeq0Qni/ifRkRARAREREBEBEREQEQERERARAREREBEBETEhev3/wKA0ngGcVfb5gAAAABJRU5ErkJggg==';

final Map<String, String> templates = {
  "decorous1TemplateCarouselMobile": 'decorous1TemplateCarouselMobile.json',
  "decorous1TemplateCarouselTablet": 'decorous1TemplateCarouselTablet.json',
  "decorous1TemplateWrapMobile": 'decorous1TemplateWrapMobile.json',
  "decorous2TemplateCarouselMobile": 'decorous2TemplateCarouselMobile.json',
  "decorous2TemplateWrapMobile": 'decorous2TemplateWrapMobile.json',
  "decorous3TemplateCarouselMobile": 'decorous3TemplateCarouselMobile.json',
  "decorous3TemplateWrapMobile": 'decorous3TemplateWrapMobile.json',
  "decorous4TemplateCarouselMobile": 'decorous4TemplateCarouselMobile.json',
  "decorous4TemplateWrapMobile": 'decorous4TemplateWrapMobile.json',
  "decorous5TemplateCarouselMobile": 'decorous5TemplateCarouselMobile.json',
  "decorous5TemplateWrapMobile": 'decorous5TemplateWrapMobile.json',
  "decorous6TemplateCarouselMobile": 'decorous6TemplateCarouselMobile.json',
  "decorous6TemplateWrapMobile": 'decorous6TemplateWrapMobile.json'
};

enum ActiveBloc { main, widgetTree, myLibrary, mcc, queryBuilder, designSys }

enum BETType { book, gsi, entity }

List<String> designerViews = ['Login', 'MCC', 'CU Template', 'Entity Cards', 'Custom Designer'];

class MyLibrarySvgIcons {
  Widget iconBack = SvgPicture.asset(
    'assets/images/icon_back.svg',
  );
  static Widget iconPlus = SvgPicture.asset('assets/images/icon_plus.svg');
  Widget iconQuick = SvgPicture.asset(
    'assets/images/icon_quick.svg',
  );

  Widget iconHome = SvgPicture.asset(
    'assets/images/icon_home.svg',
  );
  Widget iconFilter = SvgPicture.asset(
    'assets/images/icon_filter.svg',
  );
  Widget iconSearch = SvgPicture.asset(
    'assets/images/icon_search.svg',
  );
  Widget iconMenu = SvgPicture.asset(
    'assets/images/icon_menu.svg',
  );
  static Widget iconCross = SvgPicture.asset('assets/images/icon_cross.svg');
  Widget iconCrossSearch = Icon(
    const FaIcon(Icons.clear).icon,
  );
  static Widget iconGrid = SvgPicture.asset('assets/images/icon_grid.svg', color: Colors.black);
  static Widget iconShelf = SvgPicture.asset('assets/images/icon_shelf.svg');
  static Widget iconFile = SvgPicture.asset('assets/images/icon_file.svg');
  static Widget iconPencil = SvgPicture.asset('assets/images/icon_pencil.svg');
  static Widget iconEntity = SvgPicture.asset('assets/images/icon_entity.svg');
  static Widget iconSolution = SvgPicture.asset('assets/images/icon_solution.svg');
  static Widget iconBook = SvgPicture.asset('assets/images/icon_book.svg', color: Colors.black);
  static Widget iconNh = SvgPicture.asset('assets/images/icon_nh.svg');
  Widget iconOverview = SvgPicture.asset(
    'assets/images/icon_overview.svg',
  );

  Widget iconCanvas = SvgPicture.asset(
    'assets/images/icon_canvas.svg',
  );
  Widget iconAds = SvgPicture.asset(
    'assets/images/icon_ads.svg',
  );
  Widget iconDashboard = SvgPicture.asset(
    'assets/images/icon_dashboard.svg',
  );
  Widget iconLogOut = SvgPicture.asset(
    'assets/images/icon_log_out.svg',
  );
  Widget iconMyTransaction = SvgPicture.asset(
    'assets/images/icon_my_transactions.svg',
  );
  Widget iconMilestone = SvgPicture.asset(
    'assets/images/icon_milestone.svg',
  );
  Widget iconNotification = SvgPicture.asset(
    'assets/images/icon_notification.svg',
  );
  Widget iconNslLibrary = SvgPicture.asset(
    'assets/images/icon_nsl_library.svg',
  );
  Widget iconSetting = SvgPicture.asset(
    'assets/images/icon_setting.svg',
  );
  static Widget iconSolutionGlow = SvgPicture.asset('assets/images/icon_solution_glow.svg');
  static Widget iconNode = SvgPicture.asset('assets/images/icon_node.svg');
  Widget iconForward = SvgPicture.asset(
    'assets/images/icon_forward.svg',
  );
  Widget iconLogIn = SvgPicture.asset(
    'assets/images/icon_log_in.svg',
  );
  Widget iconMCCSwitch = SvgPicture.asset(
    'assets/images/mcc_switch.svg',
  );

  Widget iconDown = SvgPicture.asset(
    'assets/images/icon_down.svg',
  );
  Widget iconLanguage = SvgPicture.asset(
    'assets/images/icon_language.svg',
  );
  Widget iconBiometric = SvgPicture.asset(
    'assets/images/icon_biometric.svg',
  );
  Widget iconDelegation = SvgPicture.asset(
    'assets/images/icon_delegation.svg',
  );
  Widget iconAbout = SvgPicture.asset(
    'assets/images/icon_about.svg',
  );
  Widget iconLocation = SvgPicture.asset(
    'assets/images/icon_location.svg',
  );

  ///color icons
  static Widget iconColorEntity = SvgPicture.asset('assets/images/icon_entity.svg', color: Color(0xFF657D));
  static Widget iconColorSolution = SvgPicture.asset('assets/images/icon_solution.svg', color: Color(0xFF657D));
  static Widget iconColorBook = SvgPicture.asset('assets/images/icon_book.svg');
  static Widget iconColorGrid = SvgPicture.asset('assets/images/icon_grid.svg');
  static Widget iconColorShelf = SvgPicture.asset('assets/images/icon_shelf.svg', color: Color(0xFF657D));
  static Widget iconColorSearch = SvgPicture.asset('assets/images/icon_search.svg', color: Color(0xFF657D));
}

class MyLibraryImages {
  static Widget book = Image.asset('assets/images/icon_book.png', fit: BoxFit.fill);
  static Widget solution = Image.asset('assets/images/icon_GSI.png', fit: BoxFit.fill);
}