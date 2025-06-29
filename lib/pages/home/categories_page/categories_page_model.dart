import '/all_components/category_component/category_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'categories_page_widget.dart' show CategoriesPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CategoriesPageModel extends FlutterFlowModel<CategoriesPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CategoryComponent component.
  late CategoryComponentModel categoryComponentModel;

  @override
  void initState(BuildContext context) {
    categoryComponentModel =
        createModel(context, () => CategoryComponentModel());
  }

  @override
  void dispose() {
    categoryComponentModel.dispose();
  }
}
