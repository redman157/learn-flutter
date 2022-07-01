import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:get/get.dart';

class MediaService extends GetxService {
  final FlutterAudioQuery audioQuery = FlutterAudioQuery();

  Future<List<SongInfo>> getMusics() async {
    return await audioQuery.getSongs();
  }
}
