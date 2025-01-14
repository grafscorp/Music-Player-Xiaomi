import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player_xiaomi/service/audio_player_xiaomi.dart';

class AudioPlayerProvider extends ChangeNotifier implements AudioPlayerXiaomi {
  // @override
  // AudioPlayer get audioPlayer => throw UnimplementedError();
  @override
  AudioPlayer audioPlayer = AudioPlayer();

  @override
  void pauseAudio() {
    audioPlayer.pause();
  }

  @override
  void playAudio() {
    audioPlayer.play();
  }

  @override
  void seekTo(int toSeconds) {
    // TODO: implement seekTo
  }

  @override
  void setAudio(String audioPath, {bool toPlay = true}) {
    audioPlayer.setAsset(audioPath);
    if (toPlay)
      playAudio();
    else
      pauseAudio();
  }

  @override
  void setLoopMode(LoopMode lopeMode) {
    // TODO: implement setLoopMode
  }

  @override
  void stopAudio() {
    audioPlayer.stop();
  }
}
