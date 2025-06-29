import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MisServiciosRecord extends FirestoreRecord {
  MisServiciosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "imagenServicio" field.
  String? _imagenServicio;
  String get imagenServicio => _imagenServicio ?? '';
  bool hasImagenServicio() => _imagenServicio != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "categoria" field.
  CategoryStruct? _categoria;
  CategoryStruct get categoria => _categoria ?? CategoryStruct();
  bool hasCategoria() => _categoria != null;

  // "completado" field.
  bool? _completado;
  bool get completado => _completado ?? false;
  bool hasCompletado() => _completado != null;

  // "cancelado" field.
  bool? _cancelado;
  bool get cancelado => _cancelado ?? false;
  bool hasCancelado() => _cancelado != null;

  // "fecha_servicio" field.
  DateTime? _fechaServicio;
  DateTime? get fechaServicio => _fechaServicio;
  bool hasFechaServicio() => _fechaServicio != null;

  // "UserRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "hora_servicio" field.
  DateTime? _horaServicio;
  DateTime? get horaServicio => _horaServicio;
  bool hasHoraServicio() => _horaServicio != null;

  // "latlang" field.
  LatLng? _latlang;
  LatLng? get latlang => _latlang;
  bool hasLatlang() => _latlang != null;

  // "workerBookingRef" field.
  DocumentReference? _workerBookingRef;
  DocumentReference? get workerBookingRef => _workerBookingRef;
  bool hasWorkerBookingRef() => _workerBookingRef != null;

  // "receiptRef" field.
  DocumentReference? _receiptRef;
  DocumentReference? get receiptRef => _receiptRef;
  bool hasReceiptRef() => _receiptRef != null;

  // "paymentStatus" field.
  String? _paymentStatus;
  String get paymentStatus => _paymentStatus ?? '';
  bool hasPaymentStatus() => _paymentStatus != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _imagenServicio = snapshotData['imagenServicio'] as String?;
    _precio = castToType<double>(snapshotData['precio']);
    _descripcion = snapshotData['descripcion'] as String?;
    _categoria = snapshotData['categoria'] is CategoryStruct
        ? snapshotData['categoria']
        : CategoryStruct.maybeFromMap(snapshotData['categoria']);
    _completado = snapshotData['completado'] as bool?;
    _cancelado = snapshotData['cancelado'] as bool?;
    _fechaServicio = snapshotData['fecha_servicio'] as DateTime?;
    _userRef = snapshotData['UserRef'] as DocumentReference?;
    _horaServicio = snapshotData['hora_servicio'] as DateTime?;
    _latlang = snapshotData['latlang'] as LatLng?;
    _workerBookingRef = snapshotData['workerBookingRef'] as DocumentReference?;
    _receiptRef = snapshotData['receiptRef'] as DocumentReference?;
    _paymentStatus = snapshotData['paymentStatus'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MisServicios');

  static Stream<MisServiciosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MisServiciosRecord.fromSnapshot(s));

  static Future<MisServiciosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MisServiciosRecord.fromSnapshot(s));

  static MisServiciosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MisServiciosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MisServiciosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MisServiciosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MisServiciosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MisServiciosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMisServiciosRecordData({
  String? nombre,
  String? imagenServicio,
  double? precio,
  String? descripcion,
  CategoryStruct? categoria,
  bool? completado,
  bool? cancelado,
  DateTime? fechaServicio,
  DocumentReference? userRef,
  DateTime? horaServicio,
  LatLng? latlang,
  DocumentReference? workerBookingRef,
  DocumentReference? receiptRef,
  String? paymentStatus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'imagenServicio': imagenServicio,
      'precio': precio,
      'descripcion': descripcion,
      'categoria': CategoryStruct().toMap(),
      'completado': completado,
      'cancelado': cancelado,
      'fecha_servicio': fechaServicio,
      'UserRef': userRef,
      'hora_servicio': horaServicio,
      'latlang': latlang,
      'workerBookingRef': workerBookingRef,
      'receiptRef': receiptRef,
      'paymentStatus': paymentStatus,
    }.withoutNulls,
  );

  // Handle nested data for "categoria" field.
  addCategoryStructData(firestoreData, categoria, 'categoria');

  return firestoreData;
}

class MisServiciosRecordDocumentEquality
    implements Equality<MisServiciosRecord> {
  const MisServiciosRecordDocumentEquality();

  @override
  bool equals(MisServiciosRecord? e1, MisServiciosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.imagenServicio == e2?.imagenServicio &&
        e1?.precio == e2?.precio &&
        e1?.descripcion == e2?.descripcion &&
        e1?.categoria == e2?.categoria &&
        e1?.completado == e2?.completado &&
        e1?.cancelado == e2?.cancelado &&
        e1?.fechaServicio == e2?.fechaServicio &&
        e1?.userRef == e2?.userRef &&
        e1?.horaServicio == e2?.horaServicio &&
        e1?.latlang == e2?.latlang &&
        e1?.workerBookingRef == e2?.workerBookingRef &&
        e1?.receiptRef == e2?.receiptRef &&
        e1?.paymentStatus == e2?.paymentStatus;
  }

  @override
  int hash(MisServiciosRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.imagenServicio,
        e?.precio,
        e?.descripcion,
        e?.categoria,
        e?.completado,
        e?.cancelado,
        e?.fechaServicio,
        e?.userRef,
        e?.horaServicio,
        e?.latlang,
        e?.workerBookingRef,
        e?.receiptRef,
        e?.paymentStatus
      ]);

  @override
  bool isValidKey(Object? o) => o is MisServiciosRecord;
}
