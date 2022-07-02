import 'package:flutter/material.dart';
import 'package:interactive_3dviewer/features/product/view.dart';
import 'package:interactive_3dviewer/features/product/widgets/price_text.dart';
import 'package:interactive_3dviewer/hero.dart';

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
    itemCount: 16,
    itemBuilder: (_, i){
        return PhotoHero(
          photo: 'assets/images/sn_purple.png',
          onTap: () => Navigator.push(context, MaterialPageRoute(
            fullscreenDialog: true,
              builder: (BuildContext context) => const ProductPage(),
            ),
          ),
          width: 200,
        );
    });
  }
}
