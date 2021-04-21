import 'package:flutter/material.dart';
import 'package:flutter_sliver_appbar/simple1.dart';
import 'package:flutter_sliver_appbar/simple2.dart';
import 'package:flutter_sliver_appbar/simple3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MainAppBarSliverAppBar(),
    );
  }
}
class MainAppBarSliverAppBar extends StatelessWidget {
  onButtonTap(Widget page, BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (BuildContext context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar & SliverAppBar"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            MyMenuButton(
              title: "Sample 1 - AppBar",
              actionTap: () {
                onButtonTap(Sample1(), context);
              },
            ),
            MyMenuButton(
              title: "Sample 2 - SliverAppBar",
              actionTap: () {
                onButtonTap(Sample2(), context);
              },
            ),
            MyMenuButton(
              title: "Sample 3 - SliverAppBar with Strech",
              actionTap: () {
                onButtonTap(Sample3(), context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyMenuButton extends StatelessWidget {
  final String title;
  final VoidCallback actionTap;

  MyMenuButton({this.title, this.actionTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: MaterialButton(
        height: 50.0,
        color: Theme.of(context).primaryColor,
        textColor: Colors.white,
        child: new Text(title),
        onPressed: actionTap,
      ),
    );
  }
}