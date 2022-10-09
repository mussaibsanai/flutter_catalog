import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/Home/home_page.dart';
import 'package:flutter_catalog/pages/Login/login_page.dart';
import 'package:flutter_catalog/pages/widgets/themes.dart';
import 'package:flutter_catalog/routes/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      routes: {
        '/': (context) => HomePage(),
        AppRoutes.homeRoute: (context) => HomePage(),
        AppRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
