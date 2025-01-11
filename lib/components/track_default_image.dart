import 'package:flutter/material.dart';

class TrackDefaultImage extends StatelessWidget {
  const TrackDefaultImage({super.key, required this.radius});
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(colors: [Colors.pink, Colors.purple])),
    );
  }
}
