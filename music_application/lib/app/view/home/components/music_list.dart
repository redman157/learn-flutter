import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';

class MusicListView extends StatefulWidget {
  final List<SongInfo> listBanner;

  const MusicListView({Key? key, required this.listBanner}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MusicListState();
  }
}

class _MusicListState extends State<MusicListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 15,
      itemBuilder: (BuildContext context, int index) => Column(children: []),
    );
  }
}
