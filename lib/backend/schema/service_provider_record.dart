import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiceProviderRecord extends FirestoreRecord {
  ServiceProviderRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "ServiceRef" field.
  DocumentReference? _serviceRef;
  DocumentReference? get serviceRef => _serviceRef;
  bool hasServiceRef() => _serviceRef != null;

  // "servref" field.
  List<DocumentReference>? _servref;
  List<DocumentReference> get servref => _servref ?? const [];
  bool hasServref() => _servref != null;

  // "workerBooking" field.
  DocumentReference? _workerBooking;
  DocumentReference? get workerBooking => _workerBooking;
  bool hasWorkerBooking() => _workerBooking != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _bio = snapshotData['bio'] as String?;
    _serviceRef = snapshotData['ServiceRef'] as DocumentReference?;
    _servref = getDataList(snapshotData['servref']);
    _workerBooking = snapshotData['workerBooking'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('serviceProvider');

  static Stream<ServiceProviderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServiceProviderRecord.fromSnapshot(s));

  static Future<ServiceProviderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServiceProviderRecord.fromSnapshot(s));

  static ServiceProviderRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServiceProviderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServiceProviderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServiceProviderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServiceProviderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServiceProviderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServiceProviderRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? bio,
  DocumentReference? serviceRef,
  DocumentReference? workerBooking,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'bio': bio,
      'ServiceRef': serviceRef,
      'workerBooking': workerBooking,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServiceProviderRecordDocumentEquality
    implements Equality<ServiceProviderRecord> {
  const ServiceProviderRecordDocumentEquality();

  @override
  bool equals(ServiceProviderRecord? e1, ServiceProviderRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.bio == e2?.bio &&
        e1?.serviceRef == e2?.serviceRef &&
        listEquality.equals(e1?.servref, e2?.servref) &&
        e1?.workerBooking == e2?.workerBooking;
  }

  @override
  int hash(ServiceProviderRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.bio,
        e?.serviceRef,
        e?.servref,
        e?.workerBooking
      ]);

  @override
  bool isValidKey(Object? o) => o is ServiceProviderRecord;
}
