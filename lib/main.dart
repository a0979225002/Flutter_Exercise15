import 'package:flutter/material.dart';
import 'routes/Routes.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//去掉debug圖示
      title: 'Material App',
      initialRoute: '/tabs',
      onGenerateRoute:onGenerateRoute,
    );
  }
}
