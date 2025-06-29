import '/all_components/booking_detailss/booking_detailss_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'booking_details_widget.dart' show BookingDetailsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookingDetailsModel extends FlutterFlowModel<BookingDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BookingDetailss component.
  late BookingDetailssModel bookingDetailssModel;

  @override
  void initState(BuildContext context) {
    bookingDetailssModel = createModel(context, () => BookingDetailssModel());
  }

  @override
  void dispose() {
    bookingDetailssModel.dispose();
  }
}
