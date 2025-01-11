import 'package:flutter/material.dart';
import 'package:music_player_xiaomi/components/song_list_tile.dart';
import 'package:music_player_xiaomi/mock/songs.dart';

class TracksPage extends StatelessWidget {
  const TracksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.play_circle_fill_rounded,
                  color: Colors.purpleAccent,
                ),
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
        //Track List
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: songList.length,
            itemBuilder: (context, index) {
              return songList[index];
            },
          ),
        ),
      ],
    );
  }
}
