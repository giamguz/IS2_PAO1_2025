import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReceiptRecord extends FirestoreRecord {
  ReceiptRecord._(
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

  // "myServiceRef" field.
  DocumentReference? _myServiceRef;
  DocumentReference? get myServiceRef => _myServiceRef;
  bool hasMyServiceRef() => _myServiceRef != null;

  // "serviceProviderRef" field.
  DocumentReference? _serviceProviderRef;
  DocumentReference? get serviceProviderRef => _serviceProviderRef;
  bool hasServiceProviderRef() => _serviceProviderRef != null;

  // "workerBooking" field.
  DocumentReference? _workerBooking;
  DocumentReference? get workerBooking => _workerBooking;
  bool hasWorkerBooking() => _workerBooking != null;

  // "paymentId" field.
  String? _paymentId;
  String get paymentId => _paymentId ?? '';
  bool hasPaymentId() => _paymentId != null;

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
    _myServiceRef = snapshotData['myServiceRef'] as DocumentReference?;
    _serviceProviderRef =
        snapshotData['serviceProviderRef'] as DocumentReference?;
    _workerBooking = snapshotData['workerBooking'] as DocumentReference?;
    _paymentId = snapshotData['paymentId'] as String?;
    _paymentStatus = snapshotData['paymentStatus'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('receipt');

  static Stream<ReceiptRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReceiptRecord.fromSnapshot(s));

  static Future<ReceiptRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReceiptRecord.fromSnapshot(s));

  static ReceiptRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReceiptRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReceiptRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReceiptRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReceiptRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReceiptRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReceiptRecordData({
  String? nombre,
  String? imagenServicio,
  double? precio,
  String? descripcion,
  CategoryStruct? categoria,
  bool? completado,
  bool? cancelado,
  DateTime? fechaServicio,
  DocumentReference? userRef,
  DocumentReference? myServiceRef,
  DocumentReference? serviceProviderRef,
  DocumentReference? workerBooking,
  String? paymentId,
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
      'myServiceRef': myServiceRef,
      'serviceProviderRef': serviceProviderRef,
      'workerBooking': workerBooking,
      'paymentId': paymentId,
      'paymentStatus': paymentStatus,
    }.withoutNulls,
  );

  // Handle nested data for "categoria" field.
  addCategoryStructData(firestoreData, categoria, 'categoria');

  return firestoreData;
}

class ReceiptRecordDocumentEquality implements Equality<ReceiptRecord> {
  const ReceiptRecordDocumentEquality();

  @override
  bool equals(ReceiptRecord? e1, ReceiptRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.imagenServicio == e2?.imagenServicio &&
        e1?.precio == e2?.precio &&
        e1?.descripcion == e2?.descripcion &&
        e1?.categoria == e2?.categoria &&
        e1?.completado == e2?.completado &&
        e1?.cancelado == e2?.cancelado &&
        e1?.fechaServicio == e2?.fechaServicio &&
        e1?.userRef == e2?.userRef &&
        e1?.myServiceRef == e2?.myServiceRef &&
        e1?.serviceProviderRef == e2?.serviceProviderRef &&
        e1?.workerBooking == e2?.workerBooking &&
        e1?.paymentId == e2?.paymentId &&
        e1?.paymentStatus == e2?.paymentStatus;
  }

  @override
  int hash(ReceiptRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.imagenServicio,
        e?.precio,
        e?.descripcion,
        e?.categoria,
        e?.completado,
        e?.cancelado,
        e?.fechaServicio,
        e?.userRef,
        e?.myServiceRef,
        e?.serviceProviderRef,
        e?.workerBooking,
        e?.paymentId,
        e?.paymentStatus
      ]);

  @override
  bool isValidKey(Object? o) => o is ReceiptRecord;
}
