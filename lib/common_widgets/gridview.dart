import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:interactive_3dviewer/features/product/view.dart';
import 'package:interactive_3dviewer/common_widgets/photo_card.dart';
import 'package:random_string/random_string.dart';

class Product{
  String name;
  String price;
  String thumbnail;
  String model;

  Product(this.name, this.price, this.thumbnail, this.model);
}

List productList = <Product>[
  Product('Easy Peasy', '14,300', 'assets/images/sn_purple.png', 'assets/glbs/sneaker.glb'),
  Product('Supersonic Headphone', '23,680', 'assets/images/hp.png', 'assets/glbs/hp.glb'),
  Product('The Incredible Game', '90,000', 'assets/images/gm.png', 'assets/glbs/gm.glb'),
  Product('Super Donuts', '100', 'assets/images/dn.png', 'assets/glbs/dn.glb'),
  Product('Ultimate Hello', '0', 'assets/images/hl.png', 'assets/glbs/hl.glbe'),
  Product('Pla-Planet', 'ASK', 'assets/images/pn.png', 'assets/glbs/pn.glb'),
  Product('Destiny Keyboard', '6,800', 'assets/images/kb.png', 'assets/glbs/kb.glb'),
  Product('The crusher', '29,800', 'assets/images/bc.png', 'assets/glbs/bc.glb'),
];

class ItemsGridView extends StatelessWidget {
  const ItemsGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(6),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, //カラム数
    ),
    itemCount: productList.length,
    itemBuilder: (_, i){
        return PhotoCard(
          name: productList[i].name,
          photo: productList[i].thumbnail,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              fullscreenDialog: true,
              builder: (BuildContext context) => ProductPage(
                name: productList[i].name, price: productList[i].price, model: productList[i].model,)
              ));
          },
          width: 300,
        );
    });
  }
}
