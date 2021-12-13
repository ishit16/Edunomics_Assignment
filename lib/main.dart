import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home.dart';
import 'theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:edunomics_app/theme_provider.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Edunomics UI';
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    builder: (context, _) {
      final themeProvider = Provider.of<ThemeProvider>(context);
      return MaterialApp(
            title: title,
            themeMode: ThemeMode.system,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            home: home(),
          );
    }
  );
}
