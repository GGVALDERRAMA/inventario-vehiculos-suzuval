import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'scan_qr_ultimo_registro_n_u_e_v_o_model.dart';
import '/components/custom_drawer_widget.dart';
export 'scan_qr_ultimo_registro_n_u_e_v_o_model.dart';

class ScanQrUltimoRegistroNUEVOWidget extends StatefulWidget {
  const ScanQrUltimoRegistroNUEVOWidget({super.key});

  static String routeName = 'ScanQrUltimoRegistro_NUEVO';
  static String routePath = '/scanQrUltimoRegistroNUEVO';

  @override
  State<ScanQrUltimoRegistroNUEVOWidget> createState() =>
      _ScanQrUltimoRegistroNUEVOWidgetState();
}

class _ScanQrUltimoRegistroNUEVOWidgetState
    extends State<ScanQrUltimoRegistroNUEVOWidget>
    with TickerProviderStateMixin {
  late ScanQrUltimoRegistroNUEVOModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasContainerTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScanQrUltimoRegistroNUEVOModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      final res = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SimpleBarcodeScannerPage(),
        ),
      );
      _model.qrVinQr = res is String ? res : '-1';

      context.pushNamed(
        UltimoRegistroNUEVOSWidget.routeName,
        queryParameters: {
          'asdasdQRNuevoRegistro': serializeParam(
            _model.qrVinQr,
            ParamType.String,
          ),
        }.withoutNulls,
      );
    });

    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(-40.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondary,
        drawer: const CustomDrawerWidget(),
        appBar: AppBar(
          backgroundColor: Color(0xFF247F96),
          iconTheme: IconThemeData(color: Color(0xFFF9EF58)),
          automaticallyImplyLeading: true,
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
      ),
    );
  }
}
