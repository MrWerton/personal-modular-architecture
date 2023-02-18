import 'package:flutter/material.dart';
import 'package:new_modular/test/test_module.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {...TestModule().routers},
    );
  }
}
