import 'package:flutter/material.dart';

class TracksPage extends StatelessWidget {
  const TracksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.play_circle_fill_rounded),
                Text("В случайном порядке"),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.format_line_spacing_rounded)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.playlist_add_check)),
              ],
            )
          ],
        ),
      ],
    );
  }
}
