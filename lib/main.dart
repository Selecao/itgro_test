import 'package:flutter/material.dart';

import 'package:itgro_test/app_home_page.dart';
import 'package:itgro_test/components/application/a_app.dart';
import 'package:itgro_test/components/application/app_theme.dart';
import 'package:itgro_test/repository/profile_repository.dart';
import 'package:itgro_test/state/profile_store.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(ItgroTestApp());
}

class ItgroTestApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => ProfileRepository(),
        ),
      ],
      child: AApp(
        showSemanticsDebugger: false,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppThemeData(),
        // wrap the next page widget with proxy provider plus Store
        home: ProxyProvider<ProfileRepository, ProfileStore>(
          update: (_, profileRepository, __) => ProfileStore(profileRepository),
          child: AppHomePage(),
        ),
      ),
    );
  }
}
