import 'package:built_collection/built_collection.dart';

import 'package:itgro_test/models/profile.dart';
import 'package:itgro_test/services/api_service.dart';

class ProfileRepository {
  ApiService httpClient = ApiService();

  Future<BuiltList<Profile>> getProfiles() async {
    return httpClient.getList('/api?results=10');
  }
}
