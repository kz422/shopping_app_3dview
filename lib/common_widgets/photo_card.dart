import 'package:flutter/material.dart';

class PhotoCard extends StatelessWidget {
  const PhotoCard({ Key? key,
    required this.photo,
    required this.onTap,
    required this.width,
    required this.name,
  }) : super(key: key);

  final String photo;
  final String name;
  final VoidCallback onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Image.asset(
                  photo,
                  fit: BoxFit.contain,
                ),
                Text(name, style: Theme.of(context).textTheme.caption,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}