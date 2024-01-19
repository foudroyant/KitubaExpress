import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class KitubaRecord extends FirestoreRecord {
  KitubaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "francais" field.
  String? _francais;
  String get francais => _francais ?? '';
  bool hasFrancais() => _francais != null;

  // "langue" field.
  String? _langue;
  String get langue => _langue ?? '';
  bool hasLangue() => _langue != null;

  void _initializeFields() {
    _francais = snapshotData['francais'] as String?;
    _langue = snapshotData['langue'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('kituba');

  static Stream<KitubaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => KitubaRecord.fromSnapshot(s));

  static Future<KitubaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => KitubaRecord.fromSnapshot(s));

  static KitubaRecord fromSnapshot(DocumentSnapshot snapshot) => KitubaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static KitubaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      KitubaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'KitubaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is KitubaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createKitubaRecordData({
  String? francais,
  String? langue,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'francais': francais,
      'langue': langue,
    }.withoutNulls,
  );

  return firestoreData;
}

class KitubaRecordDocumentEquality implements Equality<KitubaRecord> {
  const KitubaRecordDocumentEquality();

  @override
  bool equals(KitubaRecord? e1, KitubaRecord? e2) {
    return e1?.francais == e2?.francais && e1?.langue == e2?.langue;
  }

  @override
  int hash(KitubaRecord? e) =>
      const ListEquality().hash([e?.francais, e?.langue]);

  @override
  bool isValidKey(Object? o) => o is KitubaRecord;
}
