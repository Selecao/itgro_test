import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';

import 'dob.dart';
import 'id.dart';
import 'location.dart';
import 'login.dart';
import 'name.dart';
import 'picture.dart';
import 'profile.dart';
import 'registered.dart';
import 'street.dart';

part 'serializers.g.dart';

//add all of the built value types that require serialization
@SerializersFor([
  Dob,
  Id,
  Location,
  Login,
  Name,
  Picture,
  Profile,
  Registered,
  Street,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
