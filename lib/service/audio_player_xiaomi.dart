import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

abstract class AudioPlayerXiaomi {
  final AudioPlayer audioPlayer = AudioPlayer();
  void seekTo(int toSeconds);
  void pauseAudio();
  void playAudio();
  void stopAudio();
  void setAudio(String audioPath, {bool toPlay = true});
  void setLoopMode(LoopMode lopeMode);
}
