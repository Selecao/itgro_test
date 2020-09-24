import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'login.g.dart';

abstract class Login implements Built<Login, LoginBuilder> {
  Login._();

  factory Login([updates(LoginBuilder b)]) = _$Login;

  @BuiltValueField(wireName: 'uuid')
  String get uuid;
  @BuiltValueField(wireName: 'username')
  String get username;
  @BuiltValueField(wireName: 'password')
  String get password;
  @BuiltValueField(wireName: 'salt')
  String get salt;
  @BuiltValueField(wireName: 'md5')
  String get md5;
  @BuiltValueField(wireName: 'sha1')
  String get sha1;
  @BuiltValueField(wireName: 'sha256')
  String get sha256;
  String toJson() {
    return json.encode(serializers.serializeWith(Login.serializer, this));
  }

  static Login fromJson(String jsonString) {
    return serializers.deserializeWith(
        Login.serializer, json.decode(jsonString));
  }

  static Serializer<Login> get serializer => _$loginSerializer;
}
