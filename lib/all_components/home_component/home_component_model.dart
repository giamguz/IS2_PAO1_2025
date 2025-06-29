import '/all_components/categories/categories_widget.dart';
import '/all_components/product_component/product_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'home_component_widget.dart' show HomeComponentWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeComponentModel extends FlutterFlowModel<HomeComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for Categories component.
  late CategoriesModel categoriesModel;
  // Model for productComponent component.
  late ProductComponentModel productComponentModel;

  @override
  void initState(BuildContext context) {
    categoriesModel = createModel(context, () => CategoriesModel());
    productComponentModel = createModel(context, () => ProductComponentModel());
  }

  @override
  void dispose() {
    categoriesModel.dispose();
    productComponentModel.dispose();
  }
}
