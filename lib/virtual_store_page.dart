import 'package:flutter/material.dart';
import 'package:virtual_store/widgets/app_bar_mobile.dart';
import 'package:virtual_store/widgets/app_bar_web.dart';
import 'package:virtual_store/widgets/product_item_page.dart';

class VirtualStorePage extends StatefulWidget {
  const VirtualStorePage({super.key});

  @override
  State<VirtualStorePage> createState() => _VirtualStorePageState();
}

class _VirtualStorePageState extends State<VirtualStorePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var widthSize = constraints.maxWidth;
        var heigthBar = AppBar().preferredSize.height;

        return Scaffold(
          appBar: widthSize < 600
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(widthSize, heigthBar),
                )
              : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(widthSize, heigthBar),
                ),
          body: Padding(
            padding: EdgeInsets.all(16),
            child: GridView.count(
              crossAxisCount: previewAdjustment(widthSize),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: [
                ItemProductPage(
                  description: "Kit Multimidia",
                  price: "1.299,99",
                  image: "p1.jpg",
                ),
                ItemProductPage(
                  description: "Pneu Goodyear Aro 16",
                  price: "399,99",
                  image: "p2.jpg",
                ),
                ItemProductPage(
                  description: "samsung galaxy s9",
                  price: "1.268,00",
                  image: "p3.jpg",
                ),
                ItemProductPage(
                  description: "Kit Multimidia",
                  price: "1.299,99",
                  image: "p1.jpg",
                ),
                ItemProductPage(
                  description: "Pneu Goodyear Aro 16",
                  price: "399,99",
                  image: "p2.jpg",
                ),
                ItemProductPage(
                  description: "samsung galaxy s9",
                  price: "1.268,00",
                  image: "p3.jpg",
                ),
                ItemProductPage(
                  description: "Kit Multimidia",
                  price: "1.299,99",
                  image: "p1.jpg",
                ),
                ItemProductPage(
                  description: "Pneu Goodyear Aro 16",
                  price: "399,99",
                  image: "p2.jpg",
                ),
                ItemProductPage(
                  description: "samsung galaxy s9",
                  price: "1.268,00",
                  image: "p3.jpg",
                ),
                ItemProductPage(
                  description: "Kit Multimidia",
                  price: "1.299,99",
                  image: "p1.jpg",
                ),
                ItemProductPage(
                  description: "Pneu Goodyear Aro 16",
                  price: "399,99",
                  image: "p2.jpg",
                ),
                ItemProductPage(
                  description: "samsung galaxy s9",
                  price: "1.268,00",
                  image: "p3.jpg",
                ),
              
              ],
            ),
          ),
        );
      },
    );
  }

  int previewAdjustment(double widthSize) {
    int numOfColumns = 2;
    if (widthSize <= 600) {
      numOfColumns = 2;
    } else if (widthSize <= 960) {
      numOfColumns = 4;
    } else {
      numOfColumns = 6;
    }
    return numOfColumns;
  }
}
