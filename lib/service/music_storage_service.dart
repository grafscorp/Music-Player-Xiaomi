import 'dart:io';

class MusicStorageService {
  List<FileSystemEntity> getAllAudioFiles() {
    Directory dir = Directory("/storage/emulated/0/");
    String mp3Path = dir.toString();
    List<FileSystemEntity> files;
    List<FileSystemEntity> songs = [];

    files = dir.listSync(recursive: true, followLinks: false);
    for (FileSystemEntity file in files) {
      String path = file.path;
      if (path.endsWith('.mp3')) songs.add(file);
    }
    return songs;
  }

  String getAudioPath() {
    return "assets/audiotest/K3MP3R_-_Fahrradsattel_73223915.mp3";
  }
}
