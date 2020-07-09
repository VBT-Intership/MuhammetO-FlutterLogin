import 'package:flutter/material.dart';
import 'package:login_template/ui/welcome/view/welcome.dart';

import 'ui/login/view/login_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Uplabs',
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginView(),
        '/welcome': (context) => WelcomeView(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
