import 'package:flutter/material.dart';
import 'core/app_theme.dart';
import 'core/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provincia Prototype',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      initialRoute: Routes.mapView,
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
