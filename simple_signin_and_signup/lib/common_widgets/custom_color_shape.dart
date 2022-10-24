import 'package:flutter/material.dart';

import 'custom_shape.dart';

class CustomColorShape extends StatelessWidget {
  const CustomColorShape({
    required this.height,
    required this.color,
    required this.child,
    Key? key,
  }) : super(key: key);

  final double? height;
  final Color? color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ClipPath(
        clipper: CustomShape(),
        child: Container(
          height: height!,
          width: double.infinity,
          color: color!,
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }
}
