import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'dob.g.dart';

abstract class Dob implements Built<Dob, DobBuilder> {
  Dob._();

  factory Dob([updates(DobBuilder b)]) = _$Dob;

  @BuiltValueField(wireName: 'date')
  String get date;
  @BuiltValueField(wireName: 'age')
  int get age;
  String toJson() {
    return json.encode(serializers.serializeWith(Dob.serializer, this));
  }

  static Dob fromJson(String jsonString) {
    return serializers.deserializeWith(Dob.serializer, json.decode(jsonString));
  }

  static Serializer<Dob> get serializer => _$dobSerializer;
}
