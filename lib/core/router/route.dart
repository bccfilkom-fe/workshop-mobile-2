import 'package:apa_aja/presentation/pages/home_page.dart';
import 'package:apa_aja/core/router/route_path.dart';
import 'package:apa_aja/presentation/pages/second_page.dart';
import 'package:apa_aja/presentation/pages/third_page.dart';
import 'package:flutter/material.dart';

class MyRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => HomePage());
      case secondPage:
        return MaterialPageRoute(builder: (context) => const SecondPage());
      case thirdPage:
        return MaterialPageRoute(builder: (context) => const ThirdPage());
    }
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Text('Tidak ada halaman/route'),
      ),
    );
  }
}
