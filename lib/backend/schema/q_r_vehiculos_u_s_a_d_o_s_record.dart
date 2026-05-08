import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QRVehiculosUSADOSRecord extends FirestoreRecord {
  QRVehiculosUSADOSRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "PPU" field.
  String? _ppu;
  String get ppu => _ppu ?? '';
  bool hasPpu() => _ppu != null;

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

  // "Ano" field.
  String? _ano;
  String get ano => _ano ?? '';
  bool hasAno() => _ano != null;

  // "OFICINA_RESPONSABLE" field.
  String? _oficinaResponsable;
  String get oficinaResponsable => _oficinaResponsable ?? '';
  bool hasOficinaResponsable() => _oficinaResponsable != null;

  // "UBICACION_REAL" field.
  String? _ubicacionReal;
  String get ubicacionReal => _ubicacionReal ?? '';
  bool hasUbicacionReal() => _ubicacionReal != null;

  // "Kilometraje" field.
  String? _kilometraje;
  String get kilometraje => _kilometraje ?? '';
  bool hasKilometraje() => _kilometraje != null;

  void _initializeFields() {
    _ppu = snapshotData['PPU'] as String?;
    _marca = snapshotData['Marca'] as String?;
    _modelo = snapshotData['Modelo'] as String?;
    _color = snapshotData['Color'] as String?;
    _ano = snapshotData['Ano'] as String?;
    _oficinaResponsable = snapshotData['OFICINA_RESPONSABLE'] as String?;
    _ubicacionReal = snapshotData['UBICACION_REAL'] as String?;
    _kilometraje = snapshotData['Kilometraje'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('QR_Vehiculos_USADOS');

  static Stream<QRVehiculosUSADOSRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QRVehiculosUSADOSRecord.fromSnapshot(s));

  static Future<QRVehiculosUSADOSRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => QRVehiculosUSADOSRecord.fromSnapshot(s));

  static QRVehiculosUSADOSRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QRVehiculosUSADOSRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QRVehiculosUSADOSRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QRVehiculosUSADOSRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QRVehiculosUSADOSRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QRVehiculosUSADOSRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQRVehiculosUSADOSRecordData({
  String? ppu,
  String? marca,
  String? modelo,
  String? color,
  String? ano,
  String? oficinaResponsable,
  String? ubicacionReal,
  String? kilometraje,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'PPU': ppu,
      'Marca': marca,
      'Modelo': modelo,
      'Color': color,
      'Ano': ano,
      'OFICINA_RESPONSABLE': oficinaResponsable,
      'UBICACION_REAL': ubicacionReal,
      'Kilometraje': kilometraje,
    }.withoutNulls,
  );

  return firestoreData;
}

class QRVehiculosUSADOSRecordDocumentEquality
    implements Equality<QRVehiculosUSADOSRecord> {
  const QRVehiculosUSADOSRecordDocumentEquality();

  @override
  bool equals(QRVehiculosUSADOSRecord? e1, QRVehiculosUSADOSRecord? e2) {
    return e1?.ppu == e2?.ppu &&
        e1?.marca == e2?.marca &&
        e1?.modelo == e2?.modelo &&
        e1?.color == e2?.color &&
        e1?.ano == e2?.ano &&
        e1?.oficinaResponsable == e2?.oficinaResponsable &&
        e1?.ubicacionReal == e2?.ubicacionReal &&
        e1?.kilometraje == e2?.kilometraje;
  }

  @override
  int hash(QRVehiculosUSADOSRecord? e) => const ListEquality().hash([
        e?.ppu,
        e?.marca,
        e?.modelo,
        e?.color,
        e?.ano,
        e?.oficinaResponsable,
        e?.ubicacionReal,
        e?.kilometraje
      ]);

  @override
  bool isValidKey(Object? o) => o is QRVehiculosUSADOSRecord;
}
