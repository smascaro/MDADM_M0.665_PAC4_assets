import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FontsScreen extends StatelessWidget{
  static Tab buildTab(){
    return Tab(
      text: "Fonts",
      icon: Icon(Icons.font_download),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}