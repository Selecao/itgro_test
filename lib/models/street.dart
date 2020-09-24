import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'street.g.dart';

abstract class Street implements Built<Street, StreetBuilder> {
  Street._();

  factory Street([void Function(StreetBuilder) updates]) = _$Street;

  @BuiltValueField(wireName: 'number')
  String get number;
  @BuiltValueField(wireName: 'name')
  String get name;
  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Street.serializer, this);
  }

  static Street fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Street.serializer, json);
  }

  static Serializer<Street> get serializer => _$streetSerializer;
}
