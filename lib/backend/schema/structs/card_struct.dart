// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardStruct extends FFFirebaseStruct {
  CardStruct({
    String? cardHolderName,
    int? cvv,
    int? cardNumber,
    DateTime? expiry,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _cardHolderName = cardHolderName,
        _cvv = cvv,
        _cardNumber = cardNumber,
        _expiry = expiry,
        super(firestoreUtilData);

  // "CardHolderName" field.
  String? _cardHolderName;
  String get cardHolderName => _cardHolderName ?? '';
  set cardHolderName(String? val) => _cardHolderName = val;

  bool hasCardHolderName() => _cardHolderName != null;

  // "Cvv" field.
  int? _cvv;
  int get cvv => _cvv ?? 0;
  set cvv(int? val) => _cvv = val;

  void incrementCvv(int amount) => cvv = cvv + amount;

  bool hasCvv() => _cvv != null;

  // "CardNumber" field.
  int? _cardNumber;
  int get cardNumber => _cardNumber ?? 0;
  set cardNumber(int? val) => _cardNumber = val;

  void incrementCardNumber(int amount) => cardNumber = cardNumber + amount;

  bool hasCardNumber() => _cardNumber != null;

  // "Expiry" field.
  DateTime? _expiry;
  DateTime? get expiry => _expiry;
  set expiry(DateTime? val) => _expiry = val;

  bool hasExpiry() => _expiry != null;

  static CardStruct fromMap(Map<String, dynamic> data) => CardStruct(
        cardHolderName: data['CardHolderName'] as String?,
        cvv: castToType<int>(data['Cvv']),
        cardNumber: castToType<int>(data['CardNumber']),
        expiry: data['Expiry'] as DateTime?,
      );

  static CardStruct? maybeFromMap(dynamic data) =>
      data is Map ? CardStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'CardHolderName': _cardHolderName,
        'Cvv': _cvv,
        'CardNumber': _cardNumber,
        'Expiry': _expiry,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CardHolderName': serializeParam(
          _cardHolderName,
          ParamType.String,
        ),
        'Cvv': serializeParam(
          _cvv,
          ParamType.int,
        ),
        'CardNumber': serializeParam(
          _cardNumber,
          ParamType.int,
        ),
        'Expiry': serializeParam(
          _expiry,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static CardStruct fromSerializableMap(Map<String, dynamic> data) =>
      CardStruct(
        cardHolderName: deserializeParam(
          data['CardHolderName'],
          ParamType.String,
          false,
        ),
        cvv: deserializeParam(
          data['Cvv'],
          ParamType.int,
          false,
        ),
        cardNumber: deserializeParam(
          data['CardNumber'],
          ParamType.int,
          false,
        ),
        expiry: deserializeParam(
          data['Expiry'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'CardStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CardStruct &&
        cardHolderName == other.cardHolderName &&
        cvv == other.cvv &&
        cardNumber == other.cardNumber &&
        expiry == other.expiry;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([cardHolderName, cvv, cardNumber, expiry]);
}

CardStruct createCardStruct({
  String? cardHolderName,
  int? cvv,
  int? cardNumber,
  DateTime? expiry,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CardStruct(
      cardHolderName: cardHolderName,
      cvv: cvv,
      cardNumber: cardNumber,
      expiry: expiry,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CardStruct? updateCardStruct(
  CardStruct? card, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    card
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCardStructData(
  Map<String, dynamic> firestoreData,
  CardStruct? card,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (card == null) {
    return;
  }
  if (card.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && card.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cardData = getCardFirestoreData(card, forFieldValue);
  final nestedData = cardData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = card.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCardFirestoreData(
  CardStruct? card, [
  bool forFieldValue = false,
]) {
  if (card == null) {
    return {};
  }
  final firestoreData = mapToFirestore(card.toMap());

  // Add any Firestore field values
  card.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCardListFirestoreData(
  List<CardStruct>? cards,
) =>
    cards?.map((e) => getCardFirestoreData(e, true)).toList() ?? [];
