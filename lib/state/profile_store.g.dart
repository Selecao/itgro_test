// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProfileStore on _ProfileStore, Store {
  Computed<BuiltList<Profile>> _$profileListComputed;

  @override
  BuiltList<Profile> get profileList => (_$profileListComputed ??=
          Computed<BuiltList<Profile>>(() => super.profileList,
              name: '_ProfileStore.profileList'))
      .value;
  Computed<FutureStatus> _$statusComputed;

  @override
  FutureStatus get status =>
      (_$statusComputed ??= Computed<FutureStatus>(() => super.status,
              name: '_ProfileStore.status'))
          .value;
  Computed<String> _$errorMessageComputed;

  @override
  String get errorMessage =>
      (_$errorMessageComputed ??= Computed<String>(() => super.errorMessage,
              name: '_ProfileStore.errorMessage'))
          .value;

  final _$_profileListFutureAtom =
      Atom(name: '_ProfileStore._profileListFuture');

  @override
  ObservableFuture<BuiltList<Profile>> get _profileListFuture {
    _$_profileListFutureAtom.reportRead();
    return super._profileListFuture;
  }

  @override
  set _profileListFuture(ObservableFuture<BuiltList<Profile>> value) {
    _$_profileListFutureAtom.reportWrite(value, super._profileListFuture, () {
      super._profileListFuture = value;
    });
  }

  final _$fetchProfileListAsyncAction =
      AsyncAction('_ProfileStore.fetchProfileList');

  @override
  Future<BuiltList<Profile>> fetchProfileList() {
    return _$fetchProfileListAsyncAction.run(() => super.fetchProfileList());
  }

  @override
  String toString() {
    return '''
profileList: ${profileList},
status: ${status},
errorMessage: ${errorMessage}
    ''';
  }
}
