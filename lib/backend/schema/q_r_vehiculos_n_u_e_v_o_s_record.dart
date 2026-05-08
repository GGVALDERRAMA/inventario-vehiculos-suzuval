import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QRVehiculosNUEVOSRecord extends FirestoreRecord {
  QRVehiculosNUEVOSRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "VIN" field.
  String? _vin;
  String get vin => _vin ?? '';
  bool hasVin() => _vin != null;

  // "MARCA" field.
  String? _marca;
  String get marca => _marca ?? '';
  bool hasMarca() => _marca != null;

  // "MODELO" field.
  String? _modelo;
  String get modelo => _modelo ?? '';
  bool hasModelo() => _modelo != null;

  // "COLOR" field.
  String? _color;
  String get color => _color ?? '';
  bool hasColor() => _color != null;

  // "UBICACION" field.
  String? _ubicacion;
  String get ubicacion => _ubicacion ?? '';
  bool hasUbicacion() => _ubicacion != null;

  // "FECHA_COMPRA" field.
  String? _fechaCompra;
  String get fechaCompra => _fechaCompra ?? '';
  bool hasFechaCompra() => _fechaCompra != null;

  // "INTERNO" field.
  String? _interno;
  String get interno => _interno ?? '';
  bool hasInterno() => _interno != null;

  void _initializeFields() {
    _vin = snapshotData['VIN'] as String?;
    _marca = snapshotData['MARCA'] as String?;
    _modelo = snapshotData['MODELO'] as String?;
    _color = snapshotData['COLOR'] as String?;
    _ubicacion = snapshotData['UBICACION'] as String?;
    _fechaCompra = snapshotData['FECHA_COMPRA'] as String?;
    _interno = snapshotData['INTERNO'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('QR_Vehiculos_NUEVOS');

  static Stream<QRVehiculosNUEVOSRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QRVehiculosNUEVOSRecord.fromSnapshot(s));

  static Future<QRVehiculosNUEVOSRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => QRVehiculosNUEVOSRecord.fromSnapshot(s));

  static QRVehiculosNUEVOSRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QRVehiculosNUEVOSRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QRVehiculosNUEVOSRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QRVehiculosNUEVOSRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QRVehiculosNUEVOSRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QRVehiculosNUEVOSRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQRVehiculosNUEVOSRecordData({
  String? vin,
  String? marca,
  String? modelo,
  String? color,
  String? ubicacion,
  String? fechaCompra,
  String? interno,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'VIN': vin,
      'MARCA': marca,
      'MODELO': modelo,
      'COLOR': color,
      'UBICACION': ubicacion,
      'FECHA_COMPRA': fechaCompra,
      'INTERNO': interno,
    }.withoutNulls,
  );

  return firestoreData;
}

class QRVehiculosNUEVOSRecordDocumentEquality
    implements Equality<QRVehiculosNUEVOSRecord> {
  const QRVehiculosNUEVOSRecordDocumentEquality();

  @override
  bool equals(QRVehiculosNUEVOSRecord? e1, QRVehiculosNUEVOSRecord? e2) {
    return e1?.vin == e2?.vin &&
        e1?.marca == e2?.marca &&
        e1?.modelo == e2?.modelo &&
        e1?.color == e2?.color &&
        e1?.ubicacion == e2?.ubicacion &&
        e1?.fechaCompra == e2?.fechaCompra &&
        e1?.interno == e2?.interno;
  }

  @override
  int hash(QRVehiculosNUEVOSRecord? e) => const ListEquality().hash([
        e?.vin,
        e?.marca,
        e?.modelo,
        e?.color,
        e?.ubicacion,
        e?.fechaCompra,
        e?.interno
      ]);

  @override
  bool isValidKey(Object? o) => o is QRVehiculosNUEVOSRecord;
}
