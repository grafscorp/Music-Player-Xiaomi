import 'package:flutter/material.dart';
import 'package:music_player_xiaomi/components/PageLinkCards/page_link_card.dart';
import 'package:music_player_xiaomi/pages/home_page.dart';

class PlaylistsLinkCard extends StatelessWidget {
  const PlaylistsLinkCard({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLinkCard(
        backgroundColor: Colors.green,
        namePage: "Плейлисты",
        iconPage: Icons.album_rounded,
        page: HomePage());
  }
}
