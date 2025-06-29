import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServicioRecord extends FirestoreRecord {
  ServicioRecord._(
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

  // "serviceProviderRef" field.
  DocumentReference? _serviceProviderRef;
  DocumentReference? get serviceProviderRef => _serviceProviderRef;
  bool hasServiceProviderRef() => _serviceProviderRef != null;

  // "categoriaRef" field.
  DocumentReference? _categoriaRef;
  DocumentReference? get categoriaRef => _categoriaRef;
  bool hasCategoriaRef() => _categoriaRef != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _imagenServicio = snapshotData['imagenServicio'] as String?;
    _precio = castToType<double>(snapshotData['precio']);
    _descripcion = snapshotData['descripcion'] as String?;
    _categoria = snapshotData['categoria'] is CategoryStruct
        ? snapshotData['categoria']
        : CategoryStruct.maybeFromMap(snapshotData['categoria']);
    _serviceProviderRef =
        snapshotData['serviceProviderRef'] as DocumentReference?;
    _categoriaRef = snapshotData['categoriaRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('servicio');

  static Stream<ServicioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServicioRecord.fromSnapshot(s));

  static Future<ServicioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServicioRecord.fromSnapshot(s));

  static ServicioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServicioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServicioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServicioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServicioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServicioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServicioRecordData({
  String? nombre,
  String? imagenServicio,
  double? precio,
  String? descripcion,
  CategoryStruct? categoria,
  DocumentReference? serviceProviderRef,
  DocumentReference? categoriaRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'imagenServicio': imagenServicio,
      'precio': precio,
      'descripcion': descripcion,
      'categoria': CategoryStruct().toMap(),
      'serviceProviderRef': serviceProviderRef,
      'categoriaRef': categoriaRef,
    }.withoutNulls,
  );

  // Handle nested data for "categoria" field.
  addCategoryStructData(firestoreData, categoria, 'categoria');

  return firestoreData;
}

class ServicioRecordDocumentEquality implements Equality<ServicioRecord> {
  const ServicioRecordDocumentEquality();

  @override
  bool equals(ServicioRecord? e1, ServicioRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.imagenServicio == e2?.imagenServicio &&
        e1?.precio == e2?.precio &&
        e1?.descripcion == e2?.descripcion &&
        e1?.categoria == e2?.categoria &&
        e1?.serviceProviderRef == e2?.serviceProviderRef &&
        e1?.categoriaRef == e2?.categoriaRef;
  }

  @override
  int hash(ServicioRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.imagenServicio,
        e?.precio,
        e?.descripcion,
        e?.categoria,
        e?.serviceProviderRef,
        e?.categoriaRef
      ]);

  @override
  bool isValidKey(Object? o) => o is ServicioRecord;
}
