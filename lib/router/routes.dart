import 'package:fluro/fluro.dart';
import 'package:flutter_app/demo/bg.dart';
import 'package:flutter_app/demo/helloworld.dart';

class Routes {
  static Router router;

  static String root = '/';

  static String bg = '/bg';

  static void configureRoutes(Router router) {
    router.define('/', handler: new Handler(handlerFunc: (context, params) {
      return new HelloWorld();
    }));

    router.define(bg, handler: bgHandler);

    Routes.router = router;
  }

  static var bgHandler = new Handler(handlerFunc: (context, params) {
    return new Bg();
  });
}
