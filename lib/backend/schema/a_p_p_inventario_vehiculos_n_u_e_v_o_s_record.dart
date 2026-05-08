import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class APPInventarioVehiculosNUEVOSRecord extends FirestoreRecord {
  APPInventarioVehiculosNUEVOSRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "VIN" field.
  String? _vin;
  String get vin => _vin ?? '';
  bool hasVin() => _vin != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

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

  // "kilometraje_registrado" field.
  String? _kilometrajeRegistrado;
  String get kilometrajeRegistrado => _kilometrajeRegistrado ?? '';
  bool hasKilometrajeRegistrado() => _kilometrajeRegistrado != null;

  // "color" field.
  String? _color;
  String get color => _color ?? '';
  bool hasColor() => _color != null;

  // "modelo" field.
  String? _modelo;
  String get modelo => _modelo ?? '';
  bool hasModelo() => _modelo != null;

  // "marca" field.
  String? _marca;
  String get marca => _marca ?? '';
  bool hasMarca() => _marca != null;

  // "interno" field.
  String? _interno;
  String get interno => _interno ?? '';
  bool hasInterno() => _interno != null;

  // "carga_bateria" field.
  int? _cargaBateria;
  int get cargaBateria => _cargaBateria ?? 0;
  bool hasCargaBateria() => _cargaBateria != null;

  void _initializeFields() {
    _vin = snapshotData['VIN'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _ubicacion = snapshotData['ubicacion'] as String?;
    _estatus = snapshotData['estatus'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _apellido = snapshotData['apellido'] as String?;
    _kilometrajeRegistrado = snapshotData['kilometraje_registrado'] as String?;
    _color = snapshotData['color'] as String?;
    _modelo = snapshotData['modelo'] as String?;
    _marca = snapshotData['marca'] as String?;
    _interno = snapshotData['interno'] as String?;
    _cargaBateria = castToType<int>(snapshotData['carga_bateria']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('APP_Inventario_Vehiculos_NUEVOS');

  static Stream<APPInventarioVehiculosNUEVOSRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => APPInventarioVehiculosNUEVOSRecord.fromSnapshot(s));

  static Future<APPInventarioVehiculosNUEVOSRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => APPInventarioVehiculosNUEVOSRecord.fromSnapshot(s));

  static APPInventarioVehiculosNUEVOSRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      APPInventarioVehiculosNUEVOSRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static APPInventarioVehiculosNUEVOSRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      APPInventarioVehiculosNUEVOSRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'APPInventarioVehiculosNUEVOSRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is APPInventarioVehiculosNUEVOSRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAPPInventarioVehiculosNUEVOSRecordData({
  String? vin,
  DateTime? fecha,
  String? ubicacion,
  String? estatus,
  String? nombre,
  String? apellido,
  String? kilometrajeRegistrado,
  String? color,
  String? modelo,
  String? marca,
  String? interno,
  int? cargaBateria,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'VIN': vin,
      'fecha': fecha,
      'ubicacion': ubicacion,
      'estatus': estatus,
      'nombre': nombre,
      'apellido': apellido,
      'kilometraje_registrado': kilometrajeRegistrado,
      'color': color,
      'modelo': modelo,
      'marca': marca,
      'interno': interno,
      'carga_bateria': cargaBateria,
    }.withoutNulls,
  );

  return firestoreData;
}

class APPInventarioVehiculosNUEVOSRecordDocumentEquality
    implements Equality<APPInventarioVehiculosNUEVOSRecord> {
  const APPInventarioVehiculosNUEVOSRecordDocumentEquality();

  @override
  bool equals(APPInventarioVehiculosNUEVOSRecord? e1,
      APPInventarioVehiculosNUEVOSRecord? e2) {
    return e1?.vin == e2?.vin &&
        e1?.fecha == e2?.fecha &&
        e1?.ubicacion == e2?.ubicacion &&
        e1?.estatus == e2?.estatus &&
        e1?.nombre == e2?.nombre &&
        e1?.apellido == e2?.apellido &&
        e1?.kilometrajeRegistrado == e2?.kilometrajeRegistrado &&
        e1?.color == e2?.color &&
        e1?.modelo == e2?.modelo &&
        e1?.marca == e2?.marca &&
        e1?.interno == e2?.interno &&
        e1?.cargaBateria == e2?.cargaBateria;
  }

  @override
  int hash(APPInventarioVehiculosNUEVOSRecord? e) => const ListEquality().hash([
        e?.vin,
        e?.fecha,
        e?.ubicacion,
        e?.estatus,
        e?.nombre,
        e?.apellido,
        e?.kilometrajeRegistrado,
        e?.color,
        e?.modelo,
        e?.marca,
        e?.interno,
        e?.cargaBateria
      ]);

  @override
  bool isValidKey(Object? o) => o is APPInventarioVehiculosNUEVOSRecord;
}
