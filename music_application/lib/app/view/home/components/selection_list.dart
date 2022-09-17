import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:music_application/app/view/home/components/music_item.dart';

enum ListOrientation { Vertical, Horizontal }

class SectionList extends StatefulWidget {
  final List<SongInfo> listMusic;
  final ListOrientation orientation;

  const SectionList(
      {Key? key,
      required this.listMusic,
      required this.orientation})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SelectionListState();
  }
}

class _SelectionListState extends State<SectionList> {
  int _currentIndex = 0;
  late List<Widget> _listMusicItem;

  @override
  void initState() {
    _listMusicItem =
        widget.listMusic.map((e) => MusicItem(songInfo: e)).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var ori = (widget.orientation == ListOrientation.Horizontal)
        ? Axis.horizontal
        : Axis.vertical;
    return ListView(
          scrollDirection: ori,
          shrinkWrap: true,
          padding: const EdgeInsets.all(10),
          children: _listMusicItem,
        );

    /*ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) =>
              widget.listMusic.map((e) =>  MusicItem(songInfo:  e)),
        ));*/
  }
}
