// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Location> _$locationSerializer = new _$LocationSerializer();

class _$LocationSerializer implements StructuredSerializer<Location> {
  @override
  final Iterable<Type> types = const [Location, _$Location];
  @override
  final String wireName = 'Location';

  @override
  Iterable<Object> serialize(Serializers serializers, Location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'street',
      serializers.serialize(object.street,
          specifiedType: const FullType(Street)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
      'state',
      serializers.serialize(object.state,
          specifiedType: const FullType(String)),
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'postcode',
      serializers.serialize(object.postcode,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Location deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'street':
          result.street.replace(serializers.deserialize(value,
              specifiedType: const FullType(Street)) as Street);
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'postcode':
          result.postcode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Location extends Location {
  @override
  final Street street;
  @override
  final String city;
  @override
  final String state;
  @override
  final String country;
  @override
  final String postcode;

  factory _$Location([void Function(LocationBuilder) updates]) =>
      (new LocationBuilder()..update(updates)).build();

  _$Location._(
      {this.street, this.city, this.state, this.country, this.postcode})
      : super._() {
    if (street == null) {
      throw new BuiltValueNullFieldError('Location', 'street');
    }
    if (city == null) {
      throw new BuiltValueNullFieldError('Location', 'city');
    }
    if (state == null) {
      throw new BuiltValueNullFieldError('Location', 'state');
    }
    if (country == null) {
      throw new BuiltValueNullFieldError('Location', 'country');
    }
    if (postcode == null) {
      throw new BuiltValueNullFieldError('Location', 'postcode');
    }
  }

  @override
  Location rebuild(void Function(LocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationBuilder toBuilder() => new LocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Location &&
        street == other.street &&
        city == other.city &&
        state == other.state &&
        country == other.country &&
        postcode == other.postcode;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, street.hashCode), city.hashCode), state.hashCode),
            country.hashCode),
        postcode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Location')
          ..add('street', street)
          ..add('city', city)
          ..add('state', state)
          ..add('country', country)
          ..add('postcode', postcode))
        .toString();
  }
}

class LocationBuilder implements Builder<Location, LocationBuilder> {
  _$Location _$v;

  StreetBuilder _street;
  StreetBuilder get street => _$this._street ??= new StreetBuilder();
  set street(StreetBuilder street) => _$this._street = street;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  String _postcode;
  String get postcode => _$this._postcode;
  set postcode(String postcode) => _$this._postcode = postcode;

  LocationBuilder();

  LocationBuilder get _$this {
    if (_$v != null) {
      _street = _$v.street?.toBuilder();
      _city = _$v.city;
      _state = _$v.state;
      _country = _$v.country;
      _postcode = _$v.postcode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Location other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Location;
  }

  @override
  void update(void Function(LocationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Location build() {
    _$Location _$result;
    try {
      _$result = _$v ??
          new _$Location._(
              street: street.build(),
              city: city,
              state: state,
              country: country,
              postcode: postcode);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'street';
        street.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Location', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
