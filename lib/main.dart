import 'package:assets/screens/fonts_screen.dart';
import 'package:assets/screens/images_screen.dart';
import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Assets"),
          bottom: TabBar(
            tabs: [ImagesScreen.buildTab(), FontsScreen.buildTab()],
          ),
        ),
        body: TabBarView(
          children: [ImagesScreen(), FontsScreen()],
        ),
      ),
    );
  }
}
