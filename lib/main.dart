import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/router/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp() {
    final router = new Router();
    Routes.configureRoutes(router);
    Routes.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.bg,
      onGenerateRoute: Routes.router.generator,
      theme: ThemeData(primaryColor: Colors.amber),
    );
  }
}
