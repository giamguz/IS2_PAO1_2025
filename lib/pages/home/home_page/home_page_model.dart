import '/all_components/category_component/category_component_widget.dart';
import '/all_components/hcomponent/hcomponent_widget.dart';
import '/all_components/my_bookings_component/my_bookings_component_widget.dart';
import '/all_components/profile_component/profile_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for hcomponent component.
  late HcomponentModel hcomponentModel;
  // Model for CategoryComponent component.
  late CategoryComponentModel categoryComponentModel;
  // Model for MyBookingsComponent component.
  late MyBookingsComponentModel myBookingsComponentModel;
  // Model for ProfileComponent component.
  late ProfileComponentModel profileComponentModel;

  @override
  void initState(BuildContext context) {
    hcomponentModel = createModel(context, () => HcomponentModel());
    categoryComponentModel =
        createModel(context, () => CategoryComponentModel());
    myBookingsComponentModel =
        createModel(context, () => MyBookingsComponentModel());
    profileComponentModel = createModel(context, () => ProfileComponentModel());
  }

  @override
  void dispose() {
    hcomponentModel.dispose();
    categoryComponentModel.dispose();
    myBookingsComponentModel.dispose();
    profileComponentModel.dispose();
  }
}
