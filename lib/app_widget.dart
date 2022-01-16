import 'package:byanca_linda/app_controller.dart';
import 'package:byanca_linda/login_tinder_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
              theme: ThemeData(
                  primarySwatch: Colors.red,
                  brightness: AppController.instance.isDartTheme
                      ? Brightness.dark
                      : Brightness.light),
              initialRoute: '/login/tinder',
              routes: {
                '/': (context) => LoginPage(),
                '/home': (context) => HomePage(),
                '/login/tinder': (context) => LoginTinderPage()
              });
        });
  }
}
