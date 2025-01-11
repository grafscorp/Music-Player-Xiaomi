import 'package:flutter/material.dart';

class SearchTrackField extends StatefulWidget {
  const SearchTrackField({super.key});

  @override
  State<SearchTrackField> createState() => _SearchTrackFieldState();
}

class _SearchTrackFieldState extends State<SearchTrackField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 500),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Поиск треков, плейлистов и артистов",
            border: OutlineInputBorder()),
      ),
    );
  }
}
