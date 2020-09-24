import 'package:flutter/material.dart';

import 'package:itgro_test/app_home_page.dart';
import 'package:itgro_test/components/application/a_app.dart';
import 'package:itgro_test/components/application/app_theme.dart';

void main() {
  runApp(ItgroTestApp());
}

class ItgroTestApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AApp(
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppThemeData(),
      home: AppHomePage(),
    );
  }
}
