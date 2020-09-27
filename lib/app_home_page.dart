import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import 'package:itgro_test/state/profile_store.dart';
import 'package:itgro_test/widgets/page_sliver_header.dart';
import 'package:itgro_test/widgets/profile_sliver_list.dart';
import 'components/application/app_theme.dart';

class AppHomePage extends StatefulWidget {
  @override
  _AppHomePageState createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  ProfileStore _profileStore;
  List<ReactionDisposer> _disposers;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _profileStore ??= Provider.of<ProfileStore>(context);

    // disposers for error messages
    _disposers ??= [
      reaction(
        (_) => _profileStore.errorMessage,
        (String message) {
          _scaffoldKey.currentState.showSnackBar(
            SnackBar(
              content: Text(message),
            ),
          );
        },
      ),
    ];
  }

  @override
  void dispose() {
    _disposers.forEach((d) => d());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) {
          switch (_profileStore.status) {
            case FutureStatus.pending:
              return buildLoading();
            case FutureStatus.fulfilled:
              return buildLoaded();
            case FutureStatus.rejected:
              return buildRejected();
            default:
              return buildInitialInput(
                  title: 'Добро пожаловать!',
                  description:
                      'Нажмите на кнопку ниже, чтобы загрузить список профилей.',
                  buttonText: 'Загрузить профили');
          }
        },
      ),
    );
  }

  Widget buildInitialInput(
      {String title, String description, String buttonText}) {
    return CustomScrollView(slivers: [
      SliverPersistentHeader(
        pinned: true,
        floating: true,
        delegate: PageSliverHeader(
          minExtent: 100.0,
          maxExtent: 250.0,
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.symmetric(vertical: 40.0),
                decoration: BoxDecoration(
                  color: AppTheme.of(context).grayLightColor,
                  borderRadius: AppTheme.of(context).framesRadius,
                  boxShadow: [
                    AppTheme.of(context).boxShadow,
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Text(
                        '$title',
                        style: AppTheme.of(context).greetingBoldTextStyle,
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        '$description',
                        textAlign: TextAlign.center,
                        style: AppTheme.of(context).greetingTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      color: AppTheme.of(context).blueMainColor,
                      padding: const EdgeInsets.all(12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: AppTheme.of(context).framesRadius,
                      ),
                      child: Text(
                        '$buttonText',
                        style: AppTheme.of(context)
                            .greetingTextStyle
                            .copyWith(color: Colors.white),
                      ),
                      onPressed: _refresh,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ]);
  }

  Widget buildLoading() {
    return CustomScrollView(slivers: [
      SliverPersistentHeader(
        pinned: true,
        floating: true,
        delegate: PageSliverHeader(
          minExtent: 100.0,
          maxExtent: 250.0,
        ),
      ),
      SliverFillRemaining(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator(),
              SizedBox(height: 16.0),
              Text('Загрузка профилей...'),
            ],
          ),
        ),
      ),
    ]);
  }

  Widget buildRejected() {
    return buildInitialInput(
        title: 'Загрузка Отклонена!',
        description:
            'Нажмите на кнопку ниже, чтобы повторно загрузить список профилей.',
        buttonText: 'Загрузить профили');
  }

  Widget buildLoaded() {
    return RefreshIndicator(
      onRefresh: _refresh,
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: true,
            delegate: PageSliverHeader(
              minExtent: 100.0,
              maxExtent: 250.0,
            ),
          ),
          ProfileSliverList(
            backgroundColor: AppTheme.of(context).grayLightColor,
            profileList: _profileStore.profileList,
          ),
          SliverToBoxAdapter(
            child: SafeArea(
              top: false,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Text(
                    'Это все профили!',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future _refresh() => _profileStore.fetchProfileList();
}
