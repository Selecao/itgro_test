import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'street.dart';
import 'serializers.dart';

part 'location.g.dart';

abstract class Location implements Built<Location, LocationBuilder> {
  Location._();

  factory Location([updates(LocationBuilder b)]) = _$Location;

  @BuiltValueField(wireName: 'street')
  Street get street;
  @BuiltValueField(wireName: 'city')
  String get city;
  @BuiltValueField(wireName: 'state')
  String get state;
  @BuiltValueField(wireName: 'country')
  String get country;
  @BuiltValueField(wireName: 'postcode')
  String get postcode;
  String toJson() {
    return json.encode(serializers.serializeWith(Location.serializer, this));
  }

  static Location fromJson(String jsonString) {
    return serializers.deserializeWith(
        Location.serializer, json.decode(jsonString));
  }

  static Serializer<Location> get serializer => _$locationSerializer;
}
