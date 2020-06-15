import 'package:flutter/material.dart';
import 'package:flutterappbar/tabs/tabs_page.dart';
import 'package:flutterappbar/page/app_bar_demo.dart';
import 'package:flutterappbar/tabs/tab_bar_controller.dart';
final routes = {
  '/tabs':(context)=>TabsPage(),
  '/appbar':(context)=>AppBarDemoPage(),
  '/tabbar':(context)=>TabBarControllerPage(),
};


//固定寫法,多個傳參,好維護
// ignore: missing_return, top_level_function_literal_block
var  onGenerateRoute = (RouteSettings settings) {
  //命名傳值
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context, arguments: settings.arguments)
      );
      print(route);
      return route;
    } else {
      final Route route = MaterialPageRoute(

          builder: (context) => pageContentBuilder(context));
      print(route);
      return route;

    }
  }
};