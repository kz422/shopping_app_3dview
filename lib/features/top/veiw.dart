import 'package:flutter/material.dart';
import 'package:interactive_3dviewer/common_widgets/gridview.dart';

class TopView extends StatelessWidget {
  const TopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ItemsGridView()
        ],
      ),
    );
  }
}
