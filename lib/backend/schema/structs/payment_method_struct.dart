// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentMethodStruct extends FFFirebaseStruct {
  PaymentMethodStruct({
    CardStruct? card,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _card = card,
        super(firestoreUtilData);

  // "card" field.
  CardStruct? _card;
  CardStruct get card => _card ?? CardStruct();
  set card(CardStruct? val) => _card = val;

  void updateCard(Function(CardStruct) updateFn) {
    updateFn(_card ??= CardStruct());
  }

  bool hasCard() => _card != null;

  static PaymentMethodStruct fromMap(Map<String, dynamic> data) =>
      PaymentMethodStruct(
        card: data['card'] is CardStruct
            ? data['card']
            : CardStruct.maybeFromMap(data['card']),
      );

  static PaymentMethodStruct? maybeFromMap(dynamic data) => data is Map
      ? PaymentMethodStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'card': _card?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'card': serializeParam(
          _card,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static PaymentMethodStruct fromSerializableMap(Map<String, dynamic> data) =>
      PaymentMethodStruct(
        card: deserializeStructParam(
          data['card'],
          ParamType.DataStruct,
          false,
          structBuilder: CardStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PaymentMethodStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PaymentMethodStruct && card == other.card;
  }

  @override
  int get hashCode => const ListEquality().hash([card]);
}

PaymentMethodStruct createPaymentMethodStruct({
  CardStruct? card,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PaymentMethodStruct(
      card: card ?? (clearUnsetFields ? CardStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PaymentMethodStruct? updatePaymentMethodStruct(
  PaymentMethodStruct? paymentMethod, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    paymentMethod
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPaymentMethodStructData(
  Map<String, dynamic> firestoreData,
  PaymentMethodStruct? paymentMethod,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (paymentMethod == null) {
    return;
  }
  if (paymentMethod.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && paymentMethod.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final paymentMethodData =
      getPaymentMethodFirestoreData(paymentMethod, forFieldValue);
  final nestedData =
      paymentMethodData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = paymentMethod.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPaymentMethodFirestoreData(
  PaymentMethodStruct? paymentMethod, [
  bool forFieldValue = false,
]) {
  if (paymentMethod == null) {
    return {};
  }
  final firestoreData = mapToFirestore(paymentMethod.toMap());

  // Handle nested data for "card" field.
  addCardStructData(
    firestoreData,
    paymentMethod.hasCard() ? paymentMethod.card : null,
    'card',
    forFieldValue,
  );

  // Add any Firestore field values
  paymentMethod.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPaymentMethodListFirestoreData(
  List<PaymentMethodStruct>? paymentMethods,
) =>
    paymentMethods
        ?.map((e) => getPaymentMethodFirestoreData(e, true))
        .toList() ??
    [];
