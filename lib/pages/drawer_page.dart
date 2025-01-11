import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          //User
          DrawerHeader(
            child: Row(
              children: [Icon(Icons.person), Text("Name")],
            ),
          )
        ],
      ),
    );
  }
}
