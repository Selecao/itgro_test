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

  @nullable
  @BuiltValueField(wireName: 'name')
  Name get name;
  @nullable
  @BuiltValueField(wireName: 'location')
  Location get location;
  @nullable
  @BuiltValueField(wireName: 'email')
  String get email;
  @nullable
  @BuiltValueField(wireName: 'login')
  Login get login;
  @nullable
  @BuiltValueField(wireName: 'dob')
  Dob get dob;
  @nullable
  @BuiltValueField(wireName: 'registered')
  Registered get registered;
  @nullable
  @BuiltValueField(wireName: 'phone')
  String get phone;
  @nullable
  @BuiltValueField(wireName: 'cell')
  String get cell;
  @nullable
  @BuiltValueField(wireName: 'id')
  Id get id;
  @nullable
  @BuiltValueField(wireName: 'picture')
  Picture get picture;
  @nullable
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
