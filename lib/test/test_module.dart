import 'package:new_modular/module_factory.dart';
import 'package:new_modular/test/test_controller.dart';
import 'package:new_modular/test/test_page.dart';
import 'package:new_modular/test/test_page2.dart';
import 'package:provider/provider.dart';

class TestModule extends ModuleFactory {
  TestModule()
      : super(
          routers: {
            '/': (context) => TestPage(),
            '/test': (context) => TestPage2(),
          },
          bindings: [
            ChangeNotifierProvider(
              create: (context) => TestController(repository: context.read()),
            )
          ],
        );
}
