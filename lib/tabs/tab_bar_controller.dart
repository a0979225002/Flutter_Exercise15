import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin{
  //需先繼承 with SingleTickerProviderStateMixin

  TabController _tabController;//實作TabController這個類

  //頁面第一次執行時,會跑這串,驗面初始化時執行,類似建構式
  @override
  void initState() {// 生命週期函式
    // TODO: implement initState
    super.initState();

    this._tabController = new TabController(
        length: 2,
        vsync: this,
    );
    //目的可實施監聽,客戶點擊按鈕後要更新的動作
    _tabController.addListener(() {
      print(_tabController.index);
      setState(() {
        //裡面可寫更改頁面的東西
      });
    });
  }
  @override
  void dispose() {//生命週期函式 當組件銷毀時觸發
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBarControllerPage"),
        bottom: TabBar(
          controller: this._tabController,//注意:一定得加入他
          tabs: <Widget>[
            Tab(text: "熱銷",),
            Tab(text: "推薦",),
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Center(
            child: Text("熱銷"),
          ),
          Center(
            child: Text("推薦"),
          ),
        ],
      ),
    );
  }
}
