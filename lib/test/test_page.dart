import 'package:flutter/material.dart';
import 'package:new_modular/test/test_controller.dart';
import 'package:provider/provider.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = context.read<TestController>().getText();
    return Scaffold(
      body: Center(
        child: GestureDetector(
            onTap: () => Navigator.of(context).pushNamed('/test'),
            child: Text(name)),
      ),
    );
  }
}
