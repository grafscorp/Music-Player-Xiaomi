import 'package:flutter/material.dart';
import 'package:music_player_xiaomi/components/track_default_image.dart';

class DiskPlayer extends StatefulWidget {
  DiskPlayer({super.key, required this.isPlaying, this.radius = 20.0});

  double radius = 20.0;
  bool isPlaying = false;
  @override
  State<DiskPlayer> createState() => _DiskPlayerState();
}

class _DiskPlayerState extends State<DiskPlayer> with TickerProviderStateMixin {
  late AnimationController rotationController;

  @override
  void initState() {
    rotationController =
        AnimationController(duration: Duration(seconds: 5), vsync: this)
          ..repeat();
    super.initState();
    if (widget.isPlaying) rotationController.forward();
    rotationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          rotationController.repeat();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: Tween(begin: 0.0, end: 1.0).animate(rotationController),
      child: CircleAvatar(
        radius: this.widget.radius,
        backgroundImage: AssetImage(
          "assets/images/player_disk.png",
        ),
        child: TrackDefaultImage(
          radius: widget.radius * 1.35,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    rotationController.dispose();
  }
}
