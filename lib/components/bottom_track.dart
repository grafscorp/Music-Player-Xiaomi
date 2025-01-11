import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:music_player_xiaomi/components/disk_player.dart';
import 'package:music_player_xiaomi/pages/track_page.dart';

class BottomTrack extends StatefulWidget {
  const BottomTrack({super.key});

  @override
  State<BottomTrack> createState() => _BottomTrackState();
}

class _BottomTrackState extends State<BottomTrack> {
  @override
  final radiusDisk = 30.0;
  Widget build(BuildContext context) {
    return Stack(children: [
      //Disk
      Container(
        padding: EdgeInsets.all(4),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 7, vertical: 3),
          decoration: BoxDecoration(
            color: Colors.purpleAccent,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Row(
            children: [
              SizedBox(
                width: radiusDisk * 2,
              ),
              //Title
              Expanded(
                child: InkWell(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Title"),
                      Text(
                        "SubText",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  onTap: () {
                    showMaterialModalBottomSheet(
                      context: context,
                      builder: (context) => TrackPage(),
                    );
                  },
                ),
              ),
              //Buttons
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.play_arrow_rounded)),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.skip_next_rounded))
                ],
              )
            ],
          ),
        ),
      ),
      DiskPlayer(
        isPlaying: true,
        radius: radiusDisk,
      ),
    ]);
  }
}
