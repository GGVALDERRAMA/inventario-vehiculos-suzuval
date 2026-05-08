import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'formulary_page_n_e_w_widget.dart' show FormularyPageNEWWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FormularyPageNEWModel extends FlutterFlowModel<FormularyPageNEWWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Interno widget.
  FocusNode? internoFocusNode;
  TextEditingController? internoTextController;
  String? Function(BuildContext, String?)? internoTextControllerValidator;
  String? _internoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Indicar interno...';
    }

    return null;
  }

  // State field(s) for VIN widget.
  FocusNode? vinFocusNode;
  TextEditingController? vinTextController;
  String? Function(BuildContext, String?)? vinTextControllerValidator;
  String? _vinTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Indicar VIN...';
    }

    return null;
  }

  // State field(s) for Marca widget.
  FocusNode? marcaFocusNode;
  TextEditingController? marcaTextController;
  String? Function(BuildContext, String?)? marcaTextControllerValidator;
  String? _marcaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Indicar marca...';
    }

    return null;
  }

  // State field(s) for Modelo widget.
  FocusNode? modeloFocusNode;
  TextEditingController? modeloTextController;
  String? Function(BuildContext, String?)? modeloTextControllerValidator;
  String? _modeloTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Indicar modelo...';
    }

    return null;
  }

  // State field(s) for Color widget.
  FocusNode? colorFocusNode;
  TextEditingController? colorTextController;
  String? Function(BuildContext, String?)? colorTextControllerValidator;
  String? _colorTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Indicar color...';
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for Kilometraje widget.
  FocusNode? kilometrajeFocusNode;
  TextEditingController? kilometrajeTextController;
  String? Function(BuildContext, String?)? kilometrajeTextControllerValidator;
  String? _kilometrajeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Indicar Kilometraje...';
    }

    return null;
  }

  // State field(s) for Carga_Bateria widget.
  FocusNode? cargaBateriaFocusNode;
  TextEditingController? cargaBateriaTextController;
  String? Function(BuildContext, String?)? cargaBateriaTextControllerValidator;
  String? _cargaBateriaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '% Carga Batería is required';
    }

    return null;
  }

  // State field(s) for Ubicacion_DropDown widget.
  String? ubicacionDropDownValue;
  FormFieldController<String>? ubicacionDropDownValueController;

  @override
  void initState(BuildContext context) {
    internoTextControllerValidator = _internoTextControllerValidator;
    vinTextControllerValidator = _vinTextControllerValidator;
    marcaTextControllerValidator = _marcaTextControllerValidator;
    modeloTextControllerValidator = _modeloTextControllerValidator;
    colorTextControllerValidator = _colorTextControllerValidator;
    kilometrajeTextControllerValidator = _kilometrajeTextControllerValidator;
    cargaBateriaTextControllerValidator = _cargaBateriaTextControllerValidator;
  }

  @override
  void dispose() {
    internoFocusNode?.dispose();
    internoTextController?.dispose();

    vinFocusNode?.dispose();
    vinTextController?.dispose();

    marcaFocusNode?.dispose();
    marcaTextController?.dispose();

    modeloFocusNode?.dispose();
    modeloTextController?.dispose();

    colorFocusNode?.dispose();
    colorTextController?.dispose();

    kilometrajeFocusNode?.dispose();
    kilometrajeTextController?.dispose();

    cargaBateriaFocusNode?.dispose();
    cargaBateriaTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
