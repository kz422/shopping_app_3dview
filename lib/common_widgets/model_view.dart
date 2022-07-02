import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ModelView extends StatelessWidget {
  const ModelView({Key? key, required this.model}) : super(key: key);

  final String model;

  @override
  Widget build(BuildContext context) {
    return ModelViewer(
      src: model,
      alt: "A 3D model of an astronaut",
      ar: true,
      autoRotate: false,
      cameraControls: true,
    );
  }
}