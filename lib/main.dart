import 'package:flutter/material.dart';
import 'package:music_player_xiaomi/pages/home_page.dart';
import 'package:music_player_xiaomi/provider/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeProvider>(
        create: (context) => ThemeProvider(),
        child: Consumer<ThemeProvider>(
          builder: (context, themeProvider, child) => MaterialApp(
              theme: ThemeData.light(),
              darkTheme: ThemeData.dark(),
              themeMode: themeProvider.isDarkTheme()
                  ? ThemeMode.dark
                  : ThemeMode.light,
              home: HomePage()),
        ));
  }
}
