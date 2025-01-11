import 'package:flutter/material.dart';
import 'package:music_player_xiaomi/components/DrawerComponents/drawer_avatar.dart';
import 'package:music_player_xiaomi/components/DrawerComponents/drawer_tile.dart';
import 'package:music_player_xiaomi/pages/settings_page.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          //User
          DrawerHeader(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide.none),
            ),
            //padding: EdgeInsets.only(left: 16, right: 16, top: 30, bottom: 90),
            child: Row(
              children: [
                DrawerAvatar(),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Grafscorp",
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
          DrawerTile(
              title: "Настройки",
              icon: Icons.settings,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()));
              }),
          DrawerTile(
              title: "Часто задаваемые вопросы",
              icon: Icons.message_rounded,
              onPressed: () {}),
          DrawerTile(
              title: "Условия пользования",
              icon: Icons.library_books_rounded,
              onPressed: () {}),
          DrawerTile(
              title: "Политика конфиденциальности",
              icon: Icons.security_rounded,
              onPressed: () {}),
          DrawerTile(
              title: "Автоматическое обновление",
              icon: Icons.update,
              onPressed: () {}),
        ],
      ),
    );
  }
}
