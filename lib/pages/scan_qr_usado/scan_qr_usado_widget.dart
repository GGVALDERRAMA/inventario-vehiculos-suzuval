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
import 'scan_qr_usado_model.dart';
import '/components/custom_drawer_widget.dart';
export 'scan_qr_usado_model.dart';

class ScanQrUsadoWidget extends StatefulWidget {
  const ScanQrUsadoWidget({super.key});

  static String routeName = 'ScanQrUsado';
  static String routePath = '/scanQrUsado';

  @override
  State<ScanQrUsadoWidget> createState() => _ScanQrUsadoWidgetState();
}

class _ScanQrUsadoWidgetState extends State<ScanQrUsadoWidget>
    with TickerProviderStateMixin {
  late ScanQrUsadoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasContainerTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScanQrUsadoModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      try {
        final res = await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SimpleBarcodeScannerPage(),
          ),
        );
        _model.respuestaQRusado = res is String ? res : '-1';
      } catch (e) {
        _model.respuestaQRusado = '-1';
      }

      if (_model.respuestaQRusado == '-1') {
        final manualQr = await showDialog<String>(
          context: context,
          builder: (context) {
            final controller = TextEditingController();
            return AlertDialog(
              title: Text('Ingreso manual de QR'),
              content: TextField(
                controller: controller,
                autofocus: true,
                decoration: InputDecoration(hintText: 'Ingrese el código o use el lector USB'),
                onSubmitted: (value) => Navigator.pop(context, value),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    context.safePop();
                  },
                  child: Text('Cancelar'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, controller.text),
                  child: Text('Aceptar'),
                ),
              ],
            );
          },
        );

        if (manualQr != null && manualQr.isNotEmpty) {
          _model.respuestaQRusado = manualQr;
        } else {
          return;
        }
      }

      context.pushNamed(
        DatosVehiculoQRUsadoWidget.routeName,
        queryParameters: {
          'mostrarQrUsadoRegistro': serializeParam(
            _model.respuestaQRusado,
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
        drawer: CustomDrawerWidget(),
        appBar: AppBar(
          backgroundColor: Color(0xFF247F96),
          iconTheme: IconThemeData(color: Color(0xFFF9EF58)),
          automaticallyImplyLeading: true,
          title: Text(
            'Inventario Suzuval',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.outfit(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
      ),
    );
  }
}
