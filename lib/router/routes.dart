import 'package:fluro/fluro.dart';
import 'package:flutter_app/demo/bg.dart';
import 'package:flutter_app/demo/demo.dart';
import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/pages/login.dart';

class Routes {
  static Router router;

  static String root = '/';
  static String home = "/home";
  static String demo = '/demo';

  static String login = "/login";

  static void configureRoutes(Router router) {
    router.define('/', handler: new Handler(handlerFunc: (context, params) {
      return new Home();
    }));

    router.define(home, handler: new Handler(handlerFunc: (context, params) {
      return new Home();
    }));

    router.define(login, handler: new Handler(handlerFunc: (context, params) {
      return new Login();
    }));

    // demo
    router.define(demo, handler: new Handler(handlerFunc: (context, params) {
      return new Demo();
    }));

    // 全屏背景图片
    router.define("/bg", handler: bgHandler);

    Routes.router = router;
  }

  static var bgHandler = new Handler(handlerFunc: (context, params) {
    return new Bg();
  });
}
