import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'trips_record.g.dart';

abstract class TripsRecord implements Built<TripsRecord, TripsRecordBuilder> {
  static Serializer<TripsRecord> get serializer => _$tripsRecordSerializer;

  String? get from;

  String? get to;

  DateTime? get when;

  DocumentReference? get car;

  DocumentReference? get driver;

  BuiltList<DocumentReference>? get passengers;

  int? get cost;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TripsRecordBuilder builder) => builder
    ..from = ''
    ..to = ''
    ..passengers = ListBuilder()
    ..cost = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('trips');

  static Stream<TripsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TripsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TripsRecord._();
  factory TripsRecord([void Function(TripsRecordBuilder) updates]) =
      _$TripsRecord;

  static TripsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTripsRecordData({
  String? from,
  String? to,
  DateTime? when,
  DocumentReference? car,
  DocumentReference? driver,
  int? cost,
}) {
  final firestoreData = serializers.toFirestore(
    TripsRecord.serializer,
    TripsRecord(
      (t) => t
        ..from = from
        ..to = to
        ..when = when
        ..car = car
        ..driver = driver
        ..passengers = null
        ..cost = cost,
    ),
  );

  return firestoreData;
}
