import 'package:assets/assets_loader.dart';
import 'package:assets/widgets/described_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImagesScreen extends StatelessWidget {
  static Tab buildTab() {
    return Tab(
      text: "Images",
      icon: Icon(Icons.image),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DescribedImage(AssetsLoader.lodzKatedralImage, "Łódź 🇵🇱", "Where I have lived for a year."),
          DescribedImage(AssetsLoader.badalonaPontImage, "Badalona 🇪🇸",
              "Where I currently live. (image: Pont del petroli)"),
          DescribedImage(AssetsLoader.badalonaRamblaImage, "Badalona 🇪🇸",
              "Where I currently live. (image: La Rambla)"),
          DescribedImage(AssetsLoader.utrechtImage, "Utrecht 🇳🇱", "Where I will soon live."),
          DescribedImage(
              AssetsLoader.lakeBledImage, "Lake Bled 🇸🇮", "Small trip last year, beautiful place!"),
        ],
      ),
    );
  }
}
