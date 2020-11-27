import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DescribedImage extends StatelessWidget {
  AssetImage _imageAsset;
  String _imageDescription;
  String _imageTitle;

  DescribedImage(this._imageAsset, this._imageTitle, this._imageDescription);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 48),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [buildImage(), buildImageText()],
      ),
    );
  }

  Center buildImage() {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        child: Image(
          image: _imageAsset,
        ),
      ),
    );
  }

  Padding buildImageText() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [buildTitle(), buildDescription()],
      ),
    );
  }

  Text buildTitle() {
    return Text(
      _imageTitle,
      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    );
  }

  Text buildDescription() {
    return Text(
      _imageDescription,
      style: TextStyle(fontSize: 16, color: Colors.grey[700], fontStyle: FontStyle.italic),
    );
  }
}
