import 'dart:ui';

import 'package:flutter/material.dart';

class TrackPage extends StatefulWidget {
  const TrackPage({super.key});
  final imagePath = "assets/images/lilpeep_cover.jpg";
  final titleSong = "Title";
  final String? textSong = "";

  @override
  State<TrackPage> createState() => _TrackPage();
}

class _TrackPage extends State<TrackPage> {
  final colorIcon = Colors.white;
  final iconSize = 40.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ///Test
    ///

    ///
    ///
    return SafeArea(
      child: Container(
        //padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(widget.imagePath),
          ),
        ),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Top buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: colorIcon,
                          size: iconSize,
                        )),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.tune_rounded,
                              color: colorIcon,
                              size: iconSize,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert_rounded,
                              color: colorIcon,
                              size: iconSize,
                            )),
                      ],
                    )
                  ],
                ),
                Spacer(),
                //Cover Song
                Container(
                  constraints: BoxConstraints(
                    minWidth: 200,
                    minHeight: 200,
                    maxHeight: 400,
                    maxWidth: 400,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(widget.imagePath),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                //Title
                Text(
                  widget.titleSong,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 30, color: colorIcon),
                ),
                //Text Song
                Text(widget.textSong == null ? "Нет текста" : widget.textSong!),

                //Song time
                Slider(value: 0.5, onChanged: (value) {}),

                //Song contoller buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.refresh_rounded,
                          color: colorIcon,
                          size: iconSize,
                        )),
                    IconButton(
                        onPressed: () {
                          nextTrack(forward: false);
                        },
                        icon: Icon(
                          Icons.skip_previous_rounded,
                          color: colorIcon,
                          size: iconSize,
                        )),
                    IconButton(
                        onPressed: () {
                          playAndPauseAudio(true);
                        },
                        icon: Icon(
                          Icons.play_circle_fill_rounded,
                          size: 80,
                        )),
                    IconButton(
                        onPressed: () {
                          nextTrack();
                        },
                        icon: Icon(
                          Icons.skip_next_rounded,
                          color: colorIcon,
                          size: iconSize,
                        )),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.queue_music_rounded,
                        color: colorIcon,
                        size: iconSize,
                      ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String getAudioDuractionFromSeconds(Duration duration) {
    String hours = twoDigits(duration.inHours);
    String minutes = twoDigits(duration.inMinutes.remainder(60));
    String seconds = twoDigits(duration.inSeconds.remainder(60));
    hours = hours == "00" ? "" : '$hours:';
    return "$hours$minutes:$seconds";
  }

  String twoDigits(int t) {
    return t.toString().padLeft(2, '0');
  }

  void playAndPauseAudio(bool play) {
    // if (play)
    //   context.read<AudioPlayerProvider>().playAudio();
    // else
    //   context.read<AudioPlayerProvider>().pauseAudio();
  }

  void nextTrack({bool forward = true}) {
    //context.read<AudioPlayerProvider>().
  }
}
