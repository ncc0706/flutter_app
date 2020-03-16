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
      initialRoute: Routes.login,
      onGenerateRoute: Routes.router.generator,
      theme: ThemeData(
          // primaryColor: Colors.amberAccent,
          primarySwatch: Colors.yellow,
          // accentColor: Colors.tealAccent
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5), // 高亮颜色
          splashColor: Colors.white // 水波纹效果
          ),
    );
  }
}
