import 'package:flutter/material.dart';
import 'package:music_player_xiaomi/components/PageLinkCards/playlists_link_card.dart';
import 'package:music_player_xiaomi/components/PageLinkCards/recent_link_card.dart';
import 'package:music_player_xiaomi/components/bottom_track.dart';
import 'package:music_player_xiaomi/components/PageLinkCards/favorite_link_card.dart';
import 'package:music_player_xiaomi/components/search_track_field.dart';
import 'package:music_player_xiaomi/pages/drawer_page.dart';
import 'package:music_player_xiaomi/pages/tracks_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Builder(
          builder: (context) => Row(
            children: [
              IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.tune_rounded),
              ),
              SearchTrackField(),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //Link Page
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: FavoriteLinkCard()),
                Expanded(child: PlaylistsLinkCard()),
                Expanded(child: RecentLinkCard()),
              ],
            ),

            //Route Page

            //Current Page
            Expanded(child: TracksPage()),
            BottomTrack()
          ],
        ),
      ),
    );
  }
}
