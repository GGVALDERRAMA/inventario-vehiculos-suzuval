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
import 'formulary_page_u_s_e_d_widget.dart' show FormularyPageUSEDWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FormularyPageUSEDModel extends FlutterFlowModel<FormularyPageUSEDWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for PPU widget.
  FocusNode? ppuFocusNode;
  TextEditingController? ppuTextController;
  String? Function(BuildContext, String?)? ppuTextControllerValidator;
  String? _ppuTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Indicar matrícula...';
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

  // State field(s) for Anio widget.
  FocusNode? anioFocusNode;
  TextEditingController? anioTextController;
  String? Function(BuildContext, String?)? anioTextControllerValidator;
  String? _anioTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Indicar año...';
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

  // State field(s) for Ubicacion_DropDown widget.
  String? ubicacionDropDownValue;
  FormFieldController<String>? ubicacionDropDownValueController;
  // State field(s) for CargaBateria widget.
  FocusNode? cargaBateriaFocusNode;
  TextEditingController? cargaBateriaTextController;
  String? Function(BuildContext, String?)? cargaBateriaTextControllerValidator;
  String? _cargaBateriaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Falta indicar carga de batería';
    }
    return null;
  }

  // State field(s) for FechaVencimientoPermiso widget.
  String? fechaVencimientoPermisoValue;
  FormFieldController<String>? fechaVencimientoPermisoValueController;

  @override
  void initState(BuildContext context) {
    ppuTextControllerValidator = _ppuTextControllerValidator;
    marcaTextControllerValidator = _marcaTextControllerValidator;
    modeloTextControllerValidator = _modeloTextControllerValidator;
    colorTextControllerValidator = _colorTextControllerValidator;
    anioTextControllerValidator = _anioTextControllerValidator;
    kilometrajeTextControllerValidator = _kilometrajeTextControllerValidator;
    cargaBateriaTextControllerValidator = _cargaBateriaTextControllerValidator;
  }

  @override
  void dispose() {
    ppuFocusNode?.dispose();
    ppuTextController?.dispose();

    marcaFocusNode?.dispose();
    marcaTextController?.dispose();

    modeloFocusNode?.dispose();
    modeloTextController?.dispose();

    colorFocusNode?.dispose();
    colorTextController?.dispose();

    anioFocusNode?.dispose();
    anioTextController?.dispose();

    kilometrajeFocusNode?.dispose();
    kilometrajeTextController?.dispose();

    cargaBateriaFocusNode?.dispose();
    cargaBateriaTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
