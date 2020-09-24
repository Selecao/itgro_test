import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'dob.dart';
import 'id.dart';
import 'location.dart';
import 'login.dart';
import 'name.dart';
import 'picture.dart';
import 'registered.dart';
import 'serializers.dart';

part 'profile.g.dart';

abstract class Profile implements Built<Profile, ProfileBuilder> {
  Profile._();

  factory Profile([updates(ProfileBuilder b)]) = _$Profile;

  @BuiltValueField(wireName: 'name')
  Name get name;
  @BuiltValueField(wireName: 'location')
  Location get location;
  @BuiltValueField(wireName: 'email')
  String get email;
  @BuiltValueField(wireName: 'login')
  Login get login;
  @BuiltValueField(wireName: 'dob')
  Dob get dob;
  @BuiltValueField(wireName: 'registered')
  Registered get registered;
  @BuiltValueField(wireName: 'phone')
  String get phone;
  @BuiltValueField(wireName: 'cell')
  String get cell;
  @BuiltValueField(wireName: 'id')
  Id get id;
  @BuiltValueField(wireName: 'picture')
  Picture get picture;
  @BuiltValueField(wireName: 'nat')
  String get nat;
  String toJson() {
    return json.encode(serializers.serializeWith(Profile.serializer, this));
  }

  static Profile fromJson(String jsonString) {
    return serializers.deserializeWith(
        Profile.serializer, json.decode(jsonString));
  }

  static Serializer<Profile> get serializer => _$profileSerializer;
}
