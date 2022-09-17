import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:music_application/app/view/home/models/mapper.dart';

class Music {
  String? mediaId;
  String? displayName;
  String? album;
  String? artist;
  String? duration;
  String? imageUrl;

  Music({
    required this.mediaId,
    required this.displayName,
    required this.imageUrl,
    required this.album,
    required this.artist,
    required this.duration,
  });

}

class MusicImpl implements MapperModel<Music, SongInfo>, MapperList<Music, SongInfo>{
  @override
  Music fromEntity(SongInfo toEntity) {
    return Music(
      mediaId: toEntity.id,
      displayName: toEntity.displayName,
      album: toEntity.album,
      artist: toEntity.artist,
      duration: toEntity.duration,
      imageUrl: toEntity.uri
    );
  }

  @override
  SongInfo toEntity(Music fromEntity) {
    throw UnimplementedError();
  }

  @override
  List<Music> fromEntityList(List<SongInfo> toEntities) {
    List<Music> music = [];
    toEntities.map((e) => {
      music.add(fromEntity(e))
    });
    return music;
  }

  @override
  List<SongInfo> toEntityList(List<Music> fromEntities) {
    // TODO: implement toEntityList
    throw UnimplementedError();
  }


}
