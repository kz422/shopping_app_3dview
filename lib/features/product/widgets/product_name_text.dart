import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductNameText extends StatelessWidget {
  const ProductNameText({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(name,
      style: Theme.of(context).textTheme.headline4!.copyWith(
          fontWeight: FontWeight.bold),
    );
  }
}
