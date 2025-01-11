import 'package:flutter/material.dart';
import 'package:music_player_xiaomi/components/PageLinkCards/page_link_card.dart';
import 'package:music_player_xiaomi/pages/home_page.dart';

class FavoriteLinkCard extends StatelessWidget {
  const FavoriteLinkCard({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLinkCard(
        backgroundColor: Colors.purpleAccent,
        namePage: "Избранные",
        iconPage: Icons.star_rate_rounded,
        page: HomePage());
  }
}
