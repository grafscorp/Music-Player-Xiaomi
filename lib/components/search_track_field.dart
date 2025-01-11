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
      padding: EdgeInsets.symmetric(
        horizontal: 8,
      ),
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: 350),
              child: TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_rounded),
                  hintText: "Поиск треков, плейлистов и артистов",
                  hintStyle: TextStyle(overflow: TextOverflow.ellipsis),
                  border: InputBorder.none,
                ),
              ),
            ),
            VerticalDivider(
              indent: 8,
              endIndent: 8,
            ),
            IconButton(
                onPressed: voiceInput, icon: Icon(Icons.mic_none_rounded))
          ],
        ),
      ),
    );
  }

  void voiceInput() {}
}
