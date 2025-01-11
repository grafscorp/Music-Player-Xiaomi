import 'package:flutter/material.dart';

class DrawerAvatar extends StatelessWidget {
  const DrawerAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Colors.lightBlueAccent,
      child: Text(
        "G",
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    );
  }
}
