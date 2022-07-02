import 'package:flutter/material.dart';

class PriceText extends StatelessWidget {
  const PriceText({Key? key, required this.price}) : super(key: key);

  final String price;

  @override
  Widget build(BuildContext context) {
    return Text('$price円',
      style: Theme.of(context).textTheme.labelMedium!.copyWith(
          fontWeight: FontWeight.bold, letterSpacing: 0, color: Colors.black54),
    );
  }
}
