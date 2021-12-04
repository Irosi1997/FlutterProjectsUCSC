
import 'package:demo/views/home.dart';
import 'package:flutter/material.dart';
import 'package:demo/views/user_profile.dart';
import 'package:demo/views/users.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/users':
        return MaterialPageRoute(builder: (_) => UsersPage());
      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfilePage());
     
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
