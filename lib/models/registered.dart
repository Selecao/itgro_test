import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'registered.g.dart';

abstract class Registered implements Built<Registered, RegisteredBuilder> {
  Registered._();

  factory Registered([updates(RegisteredBuilder b)]) = _$Registered;

  @BuiltValueField(wireName: 'date')
  String get date;
  @BuiltValueField(wireName: 'age')
  int get age;
  String toJson() {
    return json.encode(serializers.serializeWith(Registered.serializer, this));
  }

  static Registered fromJson(String jsonString) {
    return serializers.deserializeWith(
        Registered.serializer, json.decode(jsonString));
  }

  static Serializer<Registered> get serializer => _$registeredSerializer;
}
