import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class APPInventarioVehiculosUSADOSRecord extends FirestoreRecord {
  APPInventarioVehiculosUSADOSRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "PPU" field.
  String? _ppu;
  String get ppu => _ppu ?? '';
  bool hasPpu() => _ppu != null;

  // "ubicacion" field.
  String? _ubicacion;
  String get ubicacion => _ubicacion ?? '';
  bool hasUbicacion() => _ubicacion != null;

  // "estatus" field.
  String? _estatus;
  String get estatus => _estatus ?? '';
  bool hasEstatus() => _estatus != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "apellido" field.
  String? _apellido;
  String get apellido => _apellido ?? '';
  bool hasApellido() => _apellido != null;

  // "Ano" field.
  String? _ano;
  String get ano => _ano ?? '';
  bool hasAno() => _ano != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "kilometraje_registrado" field.
  String? _kilometrajeRegistrado;
  String get kilometrajeRegistrado => _kilometrajeRegistrado ?? '';
  bool hasKilometrajeRegistrado() => _kilometrajeRegistrado != null;

  // "Marca" field.
  String? _marca;
  String get marca => _marca ?? '';
  bool hasMarca() => _marca != null;

  // "Modelo" field.
  String? _modelo;
  String get modelo => _modelo ?? '';
  bool hasModelo() => _modelo != null;

  // "Color" field.
  String? _color;
  String get color => _color ?? '';
  bool hasColor() => _color != null;

  // "carga_bateria" field.
  int? _cargaBateria;
  int get cargaBateria => _cargaBateria ?? 0;
  bool hasCargaBateria() => _cargaBateria != null;

  // "fecha_vencimiento_permiso" field.
  String? _fechaVencimientoPermiso;
  String get fechaVencimientoPermiso => _fechaVencimientoPermiso ?? '';
  bool hasFechaVencimientoPermiso() => _fechaVencimientoPermiso != null;

  void _initializeFields() {
    _ppu = snapshotData['PPU'] as String?;
    _ubicacion = snapshotData['ubicacion'] as String?;
    _estatus = snapshotData['estatus'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _apellido = snapshotData['apellido'] as String?;
    _ano = snapshotData['Ano'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _kilometrajeRegistrado = snapshotData['kilometraje_registrado'] as String?;
    _marca = snapshotData['Marca'] as String?;
    _modelo = snapshotData['Modelo'] as String?;
    _color = snapshotData['Color'] as String?;
    _cargaBateria = castToType<int>(snapshotData['carga_bateria']);
    _fechaVencimientoPermiso = snapshotData['fecha_vencimiento_permiso'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('APP_Inventario_Vehiculos_USADOS');

  static Stream<APPInventarioVehiculosUSADOSRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => APPInventarioVehiculosUSADOSRecord.fromSnapshot(s));

  static Future<APPInventarioVehiculosUSADOSRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => APPInventarioVehiculosUSADOSRecord.fromSnapshot(s));

  static APPInventarioVehiculosUSADOSRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      APPInventarioVehiculosUSADOSRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static APPInventarioVehiculosUSADOSRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      APPInventarioVehiculosUSADOSRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'APPInventarioVehiculosUSADOSRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is APPInventarioVehiculosUSADOSRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAPPInventarioVehiculosUSADOSRecordData({
  String? ppu,
  String? ubicacion,
  String? estatus,
  String? nombre,
  String? apellido,
  String? ano,
  DateTime? fecha,
  String? kilometrajeRegistrado,
  String? marca,
  String? modelo,
  String? color,
  int? cargaBateria,
  String? fechaVencimientoPermiso,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'PPU': ppu,
      'ubicacion': ubicacion,
      'estatus': estatus,
      'nombre': nombre,
      'apellido': apellido,
      'Ano': ano,
      'fecha': fecha,
      'kilometraje_registrado': kilometrajeRegistrado,
      'Marca': marca,
      'Modelo': modelo,
      'Color': color,
      'carga_bateria': cargaBateria,
      'fecha_vencimiento_permiso': fechaVencimientoPermiso,
    }.withoutNulls,
  );

  return firestoreData;
}

class APPInventarioVehiculosUSADOSRecordDocumentEquality
    implements Equality<APPInventarioVehiculosUSADOSRecord> {
  const APPInventarioVehiculosUSADOSRecordDocumentEquality();

  @override
  bool equals(APPInventarioVehiculosUSADOSRecord? e1,
      APPInventarioVehiculosUSADOSRecord? e2) {
    return e1?.ppu == e2?.ppu &&
        e1?.ubicacion == e2?.ubicacion &&
        e1?.estatus == e2?.estatus &&
        e1?.nombre == e2?.nombre &&
        e1?.apellido == e2?.apellido &&
        e1?.ano == e2?.ano &&
        e1?.fecha == e2?.fecha &&
        e1?.kilometrajeRegistrado == e2?.kilometrajeRegistrado &&
        e1?.marca == e2?.marca &&
        e1?.modelo == e2?.modelo &&
        e1?.color == e2?.color &&
        e1?.cargaBateria == e2?.cargaBateria &&
        e1?.fechaVencimientoPermiso == e2?.fechaVencimientoPermiso;
  }

  @override
  int hash(APPInventarioVehiculosUSADOSRecord? e) => const ListEquality().hash([
        e?.ppu,
        e?.ubicacion,
        e?.estatus,
        e?.nombre,
        e?.apellido,
        e?.ano,
        e?.fecha,
        e?.kilometrajeRegistrado,
        e?.marca,
        e?.modelo,
        e?.color,
        e?.cargaBateria,
        e?.fechaVencimientoPermiso
      ]);

  @override
  bool isValidKey(Object? o) => o is APPInventarioVehiculosUSADOSRecord;
}
