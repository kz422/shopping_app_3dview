import 'package:flutter/material.dart';
import 'package:interactive_3dviewer/common_widgets/gridview.dart';

class TopView extends StatelessWidget {
  const TopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Top Rated', style: Theme.of(context).textTheme.headline5!.copyWith(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontFamily: 'Futura'),
          ),
          const ItemsGridView()
        ],
      ),
    );
  }
}
