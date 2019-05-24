import 'package:flutter/material.dart';
import 'package:flutter_app/pages/secondPage.dart';
import 'package:flutter_app/toast/toast.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Small Team',
        theme: new ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
          // counter didn't reset back to zero; the application is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: new HomePage(""),
        routes: <String, WidgetBuilder>{
          "secondPage": (_) => new SecondPage(),
        });
  }
}

class HomePage extends StatefulWidget {
  HomePage(String s);

  String title;

  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Column(
      children: <Widget>[
//          new ListView.builder(
//            itemCount: 50,
//            reverse: true,
//          )
        new ShowToastView(),
        new GestureDetector(
          child: Text(
            "跳转",
            style: TextStyle(
              fontSize: 22,
              fontStyle: FontStyle.italic
            ),
          ),
          onTap: () {
            print("跳转被点击");
            Navigator.pushNamed(context, "secondPage");
          },
        )
      ],
    ));
  }
}
