import 'package:flutter/material.dart';
import 'package:music_player_xiaomi/components/PageLinkCards/page_link_card.dart';
import 'package:music_player_xiaomi/pages/home_page.dart';

class RecentLinkCard extends StatelessWidget {
  const RecentLinkCard({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLinkCard(
        backgroundColor: Colors.orange,
        namePage: "Недавние",
        iconPage: Icons.access_time_filled_rounded,
        page: HomePage());
  }
}
