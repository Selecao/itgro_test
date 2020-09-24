// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Login> _$loginSerializer = new _$LoginSerializer();

class _$LoginSerializer implements StructuredSerializer<Login> {
  @override
  final Iterable<Type> types = const [Login, _$Login];
  @override
  final String wireName = 'Login';

  @override
  Iterable<Object> serialize(Serializers serializers, Login object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'uuid',
      serializers.serialize(object.uuid, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      'salt',
      serializers.serialize(object.salt, specifiedType: const FullType(String)),
      'md5',
      serializers.serialize(object.md5, specifiedType: const FullType(String)),
      'sha1',
      serializers.serialize(object.sha1, specifiedType: const FullType(String)),
      'sha256',
      serializers.serialize(object.sha256,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Login deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'uuid':
          result.uuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'salt':
          result.salt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'md5':
          result.md5 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sha1':
          result.sha1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sha256':
          result.sha256 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Login extends Login {
  @override
  final String uuid;
  @override
  final String username;
  @override
  final String password;
  @override
  final String salt;
  @override
  final String md5;
  @override
  final String sha1;
  @override
  final String sha256;

  factory _$Login([void Function(LoginBuilder) updates]) =>
      (new LoginBuilder()..update(updates)).build();

  _$Login._(
      {this.uuid,
      this.username,
      this.password,
      this.salt,
      this.md5,
      this.sha1,
      this.sha256})
      : super._() {
    if (uuid == null) {
      throw new BuiltValueNullFieldError('Login', 'uuid');
    }
    if (username == null) {
      throw new BuiltValueNullFieldError('Login', 'username');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('Login', 'password');
    }
    if (salt == null) {
      throw new BuiltValueNullFieldError('Login', 'salt');
    }
    if (md5 == null) {
      throw new BuiltValueNullFieldError('Login', 'md5');
    }
    if (sha1 == null) {
      throw new BuiltValueNullFieldError('Login', 'sha1');
    }
    if (sha256 == null) {
      throw new BuiltValueNullFieldError('Login', 'sha256');
    }
  }

  @override
  Login rebuild(void Function(LoginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginBuilder toBuilder() => new LoginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Login &&
        uuid == other.uuid &&
        username == other.username &&
        password == other.password &&
        salt == other.salt &&
        md5 == other.md5 &&
        sha1 == other.sha1 &&
        sha256 == other.sha256;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, uuid.hashCode), username.hashCode),
                        password.hashCode),
                    salt.hashCode),
                md5.hashCode),
            sha1.hashCode),
        sha256.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Login')
          ..add('uuid', uuid)
          ..add('username', username)
          ..add('password', password)
          ..add('salt', salt)
          ..add('md5', md5)
          ..add('sha1', sha1)
          ..add('sha256', sha256))
        .toString();
  }
}

class LoginBuilder implements Builder<Login, LoginBuilder> {
  _$Login _$v;

  String _uuid;
  String get uuid => _$this._uuid;
  set uuid(String uuid) => _$this._uuid = uuid;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _salt;
  String get salt => _$this._salt;
  set salt(String salt) => _$this._salt = salt;

  String _md5;
  String get md5 => _$this._md5;
  set md5(String md5) => _$this._md5 = md5;

  String _sha1;
  String get sha1 => _$this._sha1;
  set sha1(String sha1) => _$this._sha1 = sha1;

  String _sha256;
  String get sha256 => _$this._sha256;
  set sha256(String sha256) => _$this._sha256 = sha256;

  LoginBuilder();

  LoginBuilder get _$this {
    if (_$v != null) {
      _uuid = _$v.uuid;
      _username = _$v.username;
      _password = _$v.password;
      _salt = _$v.salt;
      _md5 = _$v.md5;
      _sha1 = _$v.sha1;
      _sha256 = _$v.sha256;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Login other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Login;
  }

  @override
  void update(void Function(LoginBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Login build() {
    final _$result = _$v ??
        new _$Login._(
            uuid: uuid,
            username: username,
            password: password,
            salt: salt,
            md5: md5,
            sha1: sha1,
            sha256: sha256);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
