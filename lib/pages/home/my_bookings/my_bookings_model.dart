import '/all_components/my_bookings_component/my_bookings_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'my_bookings_widget.dart' show MyBookingsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyBookingsModel extends FlutterFlowModel<MyBookingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MyBookingsComponent component.
  late MyBookingsComponentModel myBookingsComponentModel;

  @override
  void initState(BuildContext context) {
    myBookingsComponentModel =
        createModel(context, () => MyBookingsComponentModel());
  }

  @override
  void dispose() {
    myBookingsComponentModel.dispose();
  }
}
