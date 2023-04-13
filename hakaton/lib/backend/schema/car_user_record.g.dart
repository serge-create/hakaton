// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_user_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CarUserRecord> _$carUserRecordSerializer =
    new _$CarUserRecordSerializer();

class _$CarUserRecordSerializer implements StructuredSerializer<CarUserRecord> {
  @override
  final Iterable<Type> types = const [CarUserRecord, _$CarUserRecord];
  @override
  final String wireName = 'CarUserRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CarUserRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.mark;
    if (value != null) {
      result
        ..add('mark')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.model;
    if (value != null) {
      result
        ..add('model')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.regnumber;
    if (value != null) {
      result
        ..add('regnumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  CarUserRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CarUserRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mark':
          result.mark = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'model':
          result.model = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'regnumber':
          result.regnumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$CarUserRecord extends CarUserRecord {
  @override
  final String? mark;
  @override
  final String? model;
  @override
  final String? image;
  @override
  final String? regnumber;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CarUserRecord([void Function(CarUserRecordBuilder)? updates]) =>
      (new CarUserRecordBuilder()..update(updates))._build();

  _$CarUserRecord._(
      {this.mark, this.model, this.image, this.regnumber, this.ffRef})
      : super._();

  @override
  CarUserRecord rebuild(void Function(CarUserRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CarUserRecordBuilder toBuilder() => new CarUserRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CarUserRecord &&
        mark == other.mark &&
        model == other.model &&
        image == other.image &&
        regnumber == other.regnumber &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mark.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, regnumber.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CarUserRecord')
          ..add('mark', mark)
          ..add('model', model)
          ..add('image', image)
          ..add('regnumber', regnumber)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CarUserRecordBuilder
    implements Builder<CarUserRecord, CarUserRecordBuilder> {
  _$CarUserRecord? _$v;

  String? _mark;
  String? get mark => _$this._mark;
  set mark(String? mark) => _$this._mark = mark;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _regnumber;
  String? get regnumber => _$this._regnumber;
  set regnumber(String? regnumber) => _$this._regnumber = regnumber;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CarUserRecordBuilder() {
    CarUserRecord._initializeBuilder(this);
  }

  CarUserRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mark = $v.mark;
      _model = $v.model;
      _image = $v.image;
      _regnumber = $v.regnumber;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CarUserRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CarUserRecord;
  }

  @override
  void update(void Function(CarUserRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CarUserRecord build() => _build();

  _$CarUserRecord _build() {
    final _$result = _$v ??
        new _$CarUserRecord._(
            mark: mark,
            model: model,
            image: image,
            regnumber: regnumber,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
