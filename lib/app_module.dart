import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:new_modular/repository.dart';
import 'package:provider/provider.dart';
import '../../app_widget.dart';

class AppModule extends StatelessWidget {
  const AppModule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Repository>(
          create: (context) => RepositoryImp(),
        )
      ],
      child: AppWidget(),
    );
  }
}
