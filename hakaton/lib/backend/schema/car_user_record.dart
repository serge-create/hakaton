import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'car_user_record.g.dart';

abstract class CarUserRecord
    implements Built<CarUserRecord, CarUserRecordBuilder> {
  static Serializer<CarUserRecord> get serializer => _$carUserRecordSerializer;

  String? get mark;

  String? get model;

  String? get image;

  String? get regnumber;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CarUserRecordBuilder builder) => builder
    ..mark = ''
    ..model = ''
    ..image = ''
    ..regnumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('car_user');

  static Stream<CarUserRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CarUserRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CarUserRecord._();
  factory CarUserRecord([void Function(CarUserRecordBuilder) updates]) =
      _$CarUserRecord;

  static CarUserRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCarUserRecordData({
  String? mark,
  String? model,
  String? image,
  String? regnumber,
}) {
  final firestoreData = serializers.toFirestore(
    CarUserRecord.serializer,
    CarUserRecord(
      (c) => c
        ..mark = mark
        ..model = model
        ..image = image
        ..regnumber = regnumber,
    ),
  );

  return firestoreData;
}
