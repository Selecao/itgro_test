// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'street.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Street> _$streetSerializer = new _$StreetSerializer();

class _$StreetSerializer implements StructuredSerializer<Street> {
  @override
  final Iterable<Type> types = const [Street, _$Street];
  @override
  final String wireName = 'Street';

  @override
  Iterable<Object> serialize(Serializers serializers, Street object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'number',
      serializers.serialize(object.number,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Street deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StreetBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Street extends Street {
  @override
  final String number;
  @override
  final String name;

  factory _$Street([void Function(StreetBuilder) updates]) =>
      (new StreetBuilder()..update(updates)).build();

  _$Street._({this.number, this.name}) : super._() {
    if (number == null) {
      throw new BuiltValueNullFieldError('Street', 'number');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Street', 'name');
    }
  }

  @override
  Street rebuild(void Function(StreetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StreetBuilder toBuilder() => new StreetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Street && number == other.number && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, number.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Street')
          ..add('number', number)
          ..add('name', name))
        .toString();
  }
}

class StreetBuilder implements Builder<Street, StreetBuilder> {
  _$Street _$v;

  String _number;
  String get number => _$this._number;
  set number(String number) => _$this._number = number;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  StreetBuilder();

  StreetBuilder get _$this {
    if (_$v != null) {
      _number = _$v.number;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Street other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Street;
  }

  @override
  void update(void Function(StreetBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Street build() {
    final _$result = _$v ?? new _$Street._(number: number, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
