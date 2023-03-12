import 'package:flutter/material.dart';
import 'package:new_modular/test/test_controller.dart';
import 'package:provider/provider.dart';

class TestPage2 extends StatelessWidget {
  const TestPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = context.read<TestController>().getText();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(name),
      ),
    );
  }
}
