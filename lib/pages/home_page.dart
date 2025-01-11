import 'package:flutter/material.dart';
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
              SizedBox(
                width: 15,
              ),
              SearchTrackField(),
            ],
          ),
        ),
      ),
      body: TracksPage(),
    );
  }
}
