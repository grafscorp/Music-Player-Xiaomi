import 'package:flutter/material.dart';
import 'package:music_player_xiaomi/provider/theme_provider.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  void initState() {
    super.initState();
  }

  String versionApp = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Аккаунт и настройки"),
        centerTitle: true,
      ),
      body: Expanded(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
          children: [
            //Account
            ListTile(
              title: Text("Аккаунт"),
            ),
            ListTile(
              leading: Text(
                "Аккаунт",
                style: TextStyle(fontSize: 16),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("grafscorp"),
                  Icon(Icons.arrow_forward_ios_rounded)
                ],
              ),
            ),
            //Settings
            ListTile(
              title: Text("Настройки"),
            ),
            //Advanced Setting
            ListTile(
              title: Text(
                "Расширенные настройки",
              ),
              subtitle: Text(
                "Таймер сна, фильтрация файлов и многое другое",
                style: TextStyle(overflow: TextOverflow.ellipsis, fontSize: 10),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            //Theme Setting
            ListTile(
              title: Text("Темный режим"),
              trailing: Switch(
                  value: context.watch<ThemeProvider>().isDarkTheme(),
                  onChanged: (value) {
                    context.read<ThemeProvider>().changeTheme(value);
                  }),
            ),
            //Version Info
            FutureBuilder(
              future: getVersion(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  versionApp = "Загрузка";
                } else if (snapshot.hasError) {
                  versionApp = "Ошибка";
                }
                return ListTile(
                  title: Text("Версия"),
                  subtitle: Text("Текущая версия $versionApp"),
                );
              },
            ),
            //Notification
            ListTile(
              title: Text(
                "Разрешить постоянные уведомления",
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Switch(value: false, onChanged: (value) {}),
            ),
            //
            ListTile(
              title: Text("Эквалайзер"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ],
        ),
      ),
    );
  }

  Future<String> getVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }
}
