import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WorkerBookingRecord extends FirestoreRecord {
  WorkerBookingRecord._(
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

  // "myServiceRef" field.
  DocumentReference? _myServiceRef;
  DocumentReference? get myServiceRef => _myServiceRef;
  bool hasMyServiceRef() => _myServiceRef != null;

  // "serviceProvider" field.
  DocumentReference? _serviceProvider;
  DocumentReference? get serviceProvider => _serviceProvider;
  bool hasServiceProvider() => _serviceProvider != null;

  // "paymentStatus" field.
  String? _paymentStatus;
  String get paymentStatus => _paymentStatus ?? '';
  bool hasPaymentStatus() => _paymentStatus != null;

  DocumentReference get parentReference => reference.parent.parent!;

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
    _myServiceRef = snapshotData['myServiceRef'] as DocumentReference?;
    _serviceProvider = snapshotData['serviceProvider'] as DocumentReference?;
    _paymentStatus = snapshotData['paymentStatus'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('WorkerBooking')
          : FirebaseFirestore.instance.collectionGroup('WorkerBooking');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('WorkerBooking').doc(id);

  static Stream<WorkerBookingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WorkerBookingRecord.fromSnapshot(s));

  static Future<WorkerBookingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WorkerBookingRecord.fromSnapshot(s));

  static WorkerBookingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WorkerBookingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WorkerBookingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WorkerBookingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WorkerBookingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WorkerBookingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWorkerBookingRecordData({
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
  DocumentReference? myServiceRef,
  DocumentReference? serviceProvider,
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
      'myServiceRef': myServiceRef,
      'serviceProvider': serviceProvider,
      'paymentStatus': paymentStatus,
    }.withoutNulls,
  );

  // Handle nested data for "categoria" field.
  addCategoryStructData(firestoreData, categoria, 'categoria');

  return firestoreData;
}

class WorkerBookingRecordDocumentEquality
    implements Equality<WorkerBookingRecord> {
  const WorkerBookingRecordDocumentEquality();

  @override
  bool equals(WorkerBookingRecord? e1, WorkerBookingRecord? e2) {
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
        e1?.myServiceRef == e2?.myServiceRef &&
        e1?.serviceProvider == e2?.serviceProvider &&
        e1?.paymentStatus == e2?.paymentStatus;
  }

  @override
  int hash(WorkerBookingRecord? e) => const ListEquality().hash([
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
        e?.myServiceRef,
        e?.serviceProvider,
        e?.paymentStatus
      ]);

  @override
  bool isValidKey(Object? o) => o is WorkerBookingRecord;
}
