// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dob.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Dob> _$dobSerializer = new _$DobSerializer();

class _$DobSerializer implements StructuredSerializer<Dob> {
  @override
  final Iterable<Type> types = const [Dob, _$Dob];
  @override
  final String wireName = 'Dob';

  @override
  Iterable<Object> serialize(Serializers serializers, Dob object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'age',
      serializers.serialize(object.age, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Dob deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DobBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Dob extends Dob {
  @override
  final String date;
  @override
  final int age;

  factory _$Dob([void Function(DobBuilder) updates]) =>
      (new DobBuilder()..update(updates)).build();

  _$Dob._({this.date, this.age}) : super._() {
    if (date == null) {
      throw new BuiltValueNullFieldError('Dob', 'date');
    }
    if (age == null) {
      throw new BuiltValueNullFieldError('Dob', 'age');
    }
  }

  @override
  Dob rebuild(void Function(DobBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DobBuilder toBuilder() => new DobBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Dob && date == other.date && age == other.age;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, date.hashCode), age.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Dob')
          ..add('date', date)
          ..add('age', age))
        .toString();
  }
}

class DobBuilder implements Builder<Dob, DobBuilder> {
  _$Dob _$v;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  int _age;
  int get age => _$this._age;
  set age(int age) => _$this._age = age;

  DobBuilder();

  DobBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date;
      _age = _$v.age;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Dob other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Dob;
  }

  @override
  void update(void Function(DobBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Dob build() {
    final _$result = _$v ?? new _$Dob._(date: date, age: age);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
