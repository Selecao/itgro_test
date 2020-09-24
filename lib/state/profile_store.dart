import 'package:mobx/mobx.dart';
import 'package:built_collection/built_collection.dart';

import 'package:itgro_test/repository/profile_repository.dart';
import 'package:itgro_test/models/profile.dart';

part 'profile_store.g.dart';

enum StoreState { initial, loaded, loading }

class ProfileStore extends _ProfileStore with _$ProfileStore {
  ProfileStore(profileRepository) : super(profileRepository);
}

abstract class _ProfileStore with Store {
  final ProfileRepository _profileRepository;

  _ProfileStore(this._profileRepository);

  @observable
  ObservableFuture<BuiltList<Profile>> _profileListFuture;
  @computed
  BuiltList<Profile> get profileList => _profileListFuture?.value;
  @computed
  FutureStatus get status => _profileListFuture?.status;
  @computed
  String get errorMessage => _profileListFuture?.error?.toString();

  // fetch profileList
  @action
  // ignore: missing_return
  Future<BuiltList<Profile>> fetchProfileList() async {
    _profileListFuture =
        ObservableFuture(_profileRepository.getProfiles().then((response) {
      return response;
    }));
  }
}
