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
      constraints: BoxConstraints(maxWidth: 330),
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: IntrinsicHeight(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              // constraints: BoxConstraints(maxWidth: 260),
              child: TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_rounded),
                  hintText: "Поиск треков, плейлистов и артистов",
                  hintStyle:
                      TextStyle(overflow: TextOverflow.ellipsis, fontSize: 12),
                  border: InputBorder.none,
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                VerticalDivider(
                  indent: 8,
                  endIndent: 8,
                ),
                IconButton(
                    onPressed: voiceInput, icon: Icon(Icons.mic_none_rounded))
              ],
            )
          ],
        ),
      ),
    );
  }

  void voiceInput() {}
}
