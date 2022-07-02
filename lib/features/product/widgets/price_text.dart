import 'package:flutter/material.dart';

import '../../../constants.dart';

class PriceText extends StatelessWidget {
  const PriceText({Key? key, required this.price}) : super(key: key);

  final String price;

  @override
  Widget build(BuildContext context) {
    return Text('$price円',
      style: Theme.of(context).textTheme.headline5!.copyWith(
          fontWeight: FontWeight.w900, color: appMainColor, letterSpacing: 0),
    );
  }
}
