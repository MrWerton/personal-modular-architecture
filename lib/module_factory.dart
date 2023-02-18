import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

typedef Bind = List<SingleChildWidget>?;
typedef Routers = Map<String, WidgetBuilder>;

abstract class ModuleFactory {
  final Routers _routers;
  final Bind? _bindings;

  ModuleFactory({Bind bindings, required Routers routers})
      : _routers = routers,
        _bindings = bindings;

  Routers get routers {
    return _routers.map(
      (key, pageBuilder) => MapEntry(
        key,
        (_) => MultiProvider(
          providers: _bindings ?? [Provider(create: (_) => Object())],
          child: Builder(builder: (context) => pageBuilder(context)),
        ),
      ),
    );
  }

  Widget getPage(String path, BuildContext context) {
    final page = _routers[path];
    if (page != null) {
      return MultiProvider(
        providers: _bindings ?? [Provider(create: (_) => Object())],
        child: Builder(builder: (context) => page(context)),
      );
    }
    throw Exception('path of page is required');
  }
}
