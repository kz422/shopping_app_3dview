import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: TextButton(onPressed: () => Navigator.pop(context), child: const Icon(Icons.close)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: 'item',
            child: Image.asset('assets/images/sn_purple.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Sneaker', style: Theme.of(context).textTheme.headline4!.copyWith(fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}
