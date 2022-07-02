import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:interactive_3dviewer/common_widgets/model_view.dart';
import 'package:interactive_3dviewer/constants.dart';
import 'package:interactive_3dviewer/features/product/widgets/price_text.dart';
import 'package:interactive_3dviewer/features/product/widgets/product_name_text.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key,
    required this.name,
    required this.price,
    required this.model,
  }) : super(key: key);

  final String name;
  final String price;
  final String model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _addCartButton(),
      appBar: AppBar(
        title: Text(name, style: Theme.of(context).textTheme.headline5,),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: TextButton(onPressed: () => Navigator.pop(context), child: const Icon(Icons.close)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 300,
                child: ModelView(model: model),
              ),
              ProductNameText(name: name),
              PriceText(price: price),
              const SizedBox(height: 10,),
              Text(lorem(words: 200))
              // Text('Description')
            ],
          ),
        ),
      ),
    );
  }

  Widget _addCartButton(){
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: appMainColor
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.shopping_cart, color: Colors.white,),
              SizedBox(width: 10,),
              Text('カートへ追加', style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
}
