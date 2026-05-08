import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for escribir_nombre widget.
  FocusNode? escribirNombreFocusNode;
  TextEditingController? escribirNombreTextController;
  String? Function(BuildContext, String?)?
      escribirNombreTextControllerValidator;
  String? _escribirNombreTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Escribir nombre...';
    }

    return null;
  }

  // State field(s) for escribir_apellido widget.
  FocusNode? escribirApellidoFocusNode;
  TextEditingController? escribirApellidoTextController;
  String? Function(BuildContext, String?)?
      escribirApellidoTextControllerValidator;
  String? _escribirApellidoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Escribir apellido';
    }

    return null;
  }

  // State field(s) for escribir_correo widget.
  FocusNode? escribirCorreoFocusNode;
  TextEditingController? escribirCorreoTextController;
  String? Function(BuildContext, String?)?
      escribirCorreoTextControllerValidator;
  String? _escribirCorreoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Escribir correo electrónico';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Escribir un correo electrónico valido';
    }
    return null;
  }

  // State field(s) for escribir_contrasena widget.
  FocusNode? escribirContrasenaFocusNode;
  TextEditingController? escribirContrasenaTextController;
  late bool escribirContrasenaVisibility;
  String? Function(BuildContext, String?)?
      escribirContrasenaTextControllerValidator;
  String? _escribirContrasenaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Escribir contraseña';
    }

    return null;
  }

  // State field(s) for confirmar_contrasena widget.
  FocusNode? confirmarContrasenaFocusNode;
  TextEditingController? confirmarContrasenaTextController;
  late bool confirmarContrasenaVisibility;
  String? Function(BuildContext, String?)?
      confirmarContrasenaTextControllerValidator;
  String? _confirmarContrasenaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Repetir contraseña';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    escribirNombreTextControllerValidator =
        _escribirNombreTextControllerValidator;
    escribirApellidoTextControllerValidator =
        _escribirApellidoTextControllerValidator;
    escribirCorreoTextControllerValidator =
        _escribirCorreoTextControllerValidator;
    escribirContrasenaVisibility = false;
    escribirContrasenaTextControllerValidator =
        _escribirContrasenaTextControllerValidator;
    confirmarContrasenaVisibility = false;
    confirmarContrasenaTextControllerValidator =
        _confirmarContrasenaTextControllerValidator;
  }

  @override
  void dispose() {
    escribirNombreFocusNode?.dispose();
    escribirNombreTextController?.dispose();

    escribirApellidoFocusNode?.dispose();
    escribirApellidoTextController?.dispose();

    escribirCorreoFocusNode?.dispose();
    escribirCorreoTextController?.dispose();

    escribirContrasenaFocusNode?.dispose();
    escribirContrasenaTextController?.dispose();

    confirmarContrasenaFocusNode?.dispose();
    confirmarContrasenaTextController?.dispose();
  }
}
