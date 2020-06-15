import 'package:flutter/material.dart';
import 'package:flutterappbar/page/home_page.dart';
import 'package:flutterappbar/page/category_page.dart';
import 'package:flutterappbar/page/setting_page.dart';
import 'package:flutterappbar/page/search_page.dart';

class NavigationBar extends StatefulWidget {
  NavigationBar({Key key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {

  int countNum = 0;

  List itemPage = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
    SearchPage(),
  ];

  List appBars = [
    "首頁",
    "商品類別",
    "設定",
    "搜尋",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBars[this.countNum]),
      ),
      body: itemPage[this.countNum],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        currentIndex: this.countNum,
        onTap: (int index){
          setState(() {
            this.countNum = index;
            print(index);
          });
        },
        type: BottomNavigationBarType.fixed,//超散個按鈕需加入這行
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("首頁"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("類別"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("設定"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("搜尋"),
          ),
        ],
      ),
    );
  }
}