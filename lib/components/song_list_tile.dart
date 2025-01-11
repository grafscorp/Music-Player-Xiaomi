import 'package:flutter/material.dart';

class SongListTile extends StatelessWidget {
  const SongListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.music_note),
      title: Text("Song Title"),
      subtitle: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            Icons.person,
            size: 20,
          ),
          Text("Artist"),
        ],
      ),
      trailing: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.share_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded))
        ],
      ),
    );
  }
}
