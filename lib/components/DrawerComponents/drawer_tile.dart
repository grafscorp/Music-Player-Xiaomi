import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile(
      {super.key,
      required this.title,
      required this.icon,
      required this.onPressed});
  final String title;
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon),
          title: Text(
            title,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          onTap: () {
            onPressed();
          },
        ),
        Divider(
          indent: 40,
        ),
      ],
    );
  }
}
