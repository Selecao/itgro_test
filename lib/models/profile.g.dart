// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Profile> _$profileSerializer = new _$ProfileSerializer();

class _$ProfileSerializer implements StructuredSerializer<Profile> {
  @override
  final Iterable<Type> types = const [Profile, _$Profile];
  @override
  final String wireName = 'Profile';

  @override
  Iterable<Object> serialize(Serializers serializers, Profile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(Name)),
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(Location)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'login',
      serializers.serialize(object.login, specifiedType: const FullType(Login)),
      'dob',
      serializers.serialize(object.dob, specifiedType: const FullType(Dob)),
      'registered',
      serializers.serialize(object.registered,
          specifiedType: const FullType(Registered)),
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
      'cell',
      serializers.serialize(object.cell, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(Id)),
      'picture',
      serializers.serialize(object.picture,
          specifiedType: const FullType(Picture)),
      'nat',
      serializers.serialize(object.nat, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Profile deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProfileBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name.replace(serializers.deserialize(value,
              specifiedType: const FullType(Name)) as Name);
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
              specifiedType: const FullType(Location)) as Location);
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'login':
          result.login.replace(serializers.deserialize(value,
              specifiedType: const FullType(Login)) as Login);
          break;
        case 'dob':
          result.dob.replace(serializers.deserialize(value,
              specifiedType: const FullType(Dob)) as Dob);
          break;
        case 'registered':
          result.registered.replace(serializers.deserialize(value,
              specifiedType: const FullType(Registered)) as Registered);
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cell':
          result.cell = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id.replace(serializers.deserialize(value,
              specifiedType: const FullType(Id)) as Id);
          break;
        case 'picture':
          result.picture.replace(serializers.deserialize(value,
              specifiedType: const FullType(Picture)) as Picture);
          break;
        case 'nat':
          result.nat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Profile extends Profile {
  @override
  final Name name;
  @override
  final Location location;
  @override
  final String email;
  @override
  final Login login;
  @override
  final Dob dob;
  @override
  final Registered registered;
  @override
  final String phone;
  @override
  final String cell;
  @override
  final Id id;
  @override
  final Picture picture;
  @override
  final String nat;

  factory _$Profile([void Function(ProfileBuilder) updates]) =>
      (new ProfileBuilder()..update(updates)).build();

  _$Profile._(
      {this.name,
      this.location,
      this.email,
      this.login,
      this.dob,
      this.registered,
      this.phone,
      this.cell,
      this.id,
      this.picture,
      this.nat})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('Profile', 'name');
    }
    if (location == null) {
      throw new BuiltValueNullFieldError('Profile', 'location');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('Profile', 'email');
    }
    if (login == null) {
      throw new BuiltValueNullFieldError('Profile', 'login');
    }
    if (dob == null) {
      throw new BuiltValueNullFieldError('Profile', 'dob');
    }
    if (registered == null) {
      throw new BuiltValueNullFieldError('Profile', 'registered');
    }
    if (phone == null) {
      throw new BuiltValueNullFieldError('Profile', 'phone');
    }
    if (cell == null) {
      throw new BuiltValueNullFieldError('Profile', 'cell');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('Profile', 'id');
    }
    if (picture == null) {
      throw new BuiltValueNullFieldError('Profile', 'picture');
    }
    if (nat == null) {
      throw new BuiltValueNullFieldError('Profile', 'nat');
    }
  }

  @override
  Profile rebuild(void Function(ProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileBuilder toBuilder() => new ProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Profile &&
        name == other.name &&
        location == other.location &&
        email == other.email &&
        login == other.login &&
        dob == other.dob &&
        registered == other.registered &&
        phone == other.phone &&
        cell == other.cell &&
        id == other.id &&
        picture == other.picture &&
        nat == other.nat;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, name.hashCode),
                                            location.hashCode),
                                        email.hashCode),
                                    login.hashCode),
                                dob.hashCode),
                            registered.hashCode),
                        phone.hashCode),
                    cell.hashCode),
                id.hashCode),
            picture.hashCode),
        nat.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Profile')
          ..add('name', name)
          ..add('location', location)
          ..add('email', email)
          ..add('login', login)
          ..add('dob', dob)
          ..add('registered', registered)
          ..add('phone', phone)
          ..add('cell', cell)
          ..add('id', id)
          ..add('picture', picture)
          ..add('nat', nat))
        .toString();
  }
}

class ProfileBuilder implements Builder<Profile, ProfileBuilder> {
  _$Profile _$v;

  NameBuilder _name;
  NameBuilder get name => _$this._name ??= new NameBuilder();
  set name(NameBuilder name) => _$this._name = name;

  LocationBuilder _location;
  LocationBuilder get location => _$this._location ??= new LocationBuilder();
  set location(LocationBuilder location) => _$this._location = location;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  LoginBuilder _login;
  LoginBuilder get login => _$this._login ??= new LoginBuilder();
  set login(LoginBuilder login) => _$this._login = login;

  DobBuilder _dob;
  DobBuilder get dob => _$this._dob ??= new DobBuilder();
  set dob(DobBuilder dob) => _$this._dob = dob;

  RegisteredBuilder _registered;
  RegisteredBuilder get registered =>
      _$this._registered ??= new RegisteredBuilder();
  set registered(RegisteredBuilder registered) =>
      _$this._registered = registered;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  String _cell;
  String get cell => _$this._cell;
  set cell(String cell) => _$this._cell = cell;

  IdBuilder _id;
  IdBuilder get id => _$this._id ??= new IdBuilder();
  set id(IdBuilder id) => _$this._id = id;

  PictureBuilder _picture;
  PictureBuilder get picture => _$this._picture ??= new PictureBuilder();
  set picture(PictureBuilder picture) => _$this._picture = picture;

  String _nat;
  String get nat => _$this._nat;
  set nat(String nat) => _$this._nat = nat;

  ProfileBuilder();

  ProfileBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name?.toBuilder();
      _location = _$v.location?.toBuilder();
      _email = _$v.email;
      _login = _$v.login?.toBuilder();
      _dob = _$v.dob?.toBuilder();
      _registered = _$v.registered?.toBuilder();
      _phone = _$v.phone;
      _cell = _$v.cell;
      _id = _$v.id?.toBuilder();
      _picture = _$v.picture?.toBuilder();
      _nat = _$v.nat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Profile other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Profile;
  }

  @override
  void update(void Function(ProfileBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Profile build() {
    _$Profile _$result;
    try {
      _$result = _$v ??
          new _$Profile._(
              name: name.build(),
              location: location.build(),
              email: email,
              login: login.build(),
              dob: dob.build(),
              registered: registered.build(),
              phone: phone,
              cell: cell,
              id: id.build(),
              picture: picture.build(),
              nat: nat);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'name';
        name.build();
        _$failedField = 'location';
        location.build();

        _$failedField = 'login';
        login.build();
        _$failedField = 'dob';
        dob.build();
        _$failedField = 'registered';
        registered.build();

        _$failedField = 'id';
        id.build();
        _$failedField = 'picture';
        picture.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Profile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
