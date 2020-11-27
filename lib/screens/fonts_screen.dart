import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FontsScreen extends StatelessWidget {
  final double _fontSize = 38;

  static Tab buildTab() {
    return Tab(
      text: "Fonts",
      icon: Icon(Icons.font_download),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTextDefault(),
            divider(),
            buildTextRoboto(),
            divider(),
            buildTextRobotoItalic(),
            divider(),
            buildTextBigShouldersStencilDisplay(),
            divider(),
            buildTextBigShouldersStencilDisplayBold(),
            divider(),
            buildTextDancingScript(),
            divider(),
            buildTextIndieFlower()
          ],
        ),
      ),
    );
  }

  Divider divider() {
    return Divider(
      thickness: 1,
    );
  }

  Widget buildTextDefault() =>
      buildTextBlock("This paragraph is written using the default font for current platform.");

  Widget buildTextRoboto() =>
      buildTextBlock("And this paragraph is written using regular Roboto font.", fontFamily: "Roboto");

  Widget buildTextDancingScript() =>
      buildTextBlock("New font again! It's time for the Dancing Script font with it's regular variant.",
          fontFamily: "DancingScript");

  Widget buildTextIndieFlower() => buildTextBlock(
      "And to conclude with this exercise, I present the last option: the Indie Flower font, again with it's regular variant.",
      fontFamily: "IndieFlower");

  Widget buildTextRobotoItalic() =>
      buildTextBlock("But this one is using the italic variant from Roboto font.",
          fontFamily: "Roboto", italics: true);

  Widget buildTextBigShouldersStencilDisplay() => buildTextBlock(
      "Now for a change, this font is called Big Shoulders Stencil Display (quite a long name) and this is the regular variant.",
      fontFamily: "BigShouldersStencilDisplay");

  Widget buildTextBigShouldersStencilDisplayBold() => buildTextBlock(
      "We are still using the Big Shoulders Stencil Display font but now for something completely different: the bold variant.",
      fontFamily: "BigShouldersStencilDisplay",
      bold: true);

  Widget buildTextBlock(String text, {String fontFamily = "", bool bold = false, bool italics = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(
            fontSize: _fontSize,
            fontFamily: fontFamily,
            fontWeight: bold ? FontWeight.bold : FontWeight.normal,
            fontStyle: italics ? FontStyle.italic : FontStyle.normal),
      ),
    );
  }
}
