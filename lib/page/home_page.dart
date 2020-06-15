import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            color: Theme.of(context).primaryColor,
            textTheme: ButtonTextTheme.primary,
            child: Text("跳轉到appbar"),
            onPressed: (){
              Navigator.pushNamed(context, '/appbar');
            },
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
              color: Theme.of(context).primaryColor,
              textTheme: ButtonTextTheme.primary,
              child: Text("跳轉到TabBarControllerPage"),
              onPressed:(){
                Navigator.pushNamed(context, '/tabbar');
              },
            ),
          )
        ],
      ),
    );
  }
}
