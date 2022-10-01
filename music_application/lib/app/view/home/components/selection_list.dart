import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:music_application/app/routers/app_log.dart';
import 'package:music_application/app/view/base_components/shimmer.dart';
import 'package:music_application/app/view/home/components/music_item.dart';
import 'package:music_application/utils/callback.dart';

enum ListOrientation { Vertical, Horizontal }

class SectionList extends StatefulWidget {
  final List<SongInfo> listMusic;
  final ListOrientation orientation;
  final ObjectCallBack<SongInfo>? onClickItem;

  const SectionList(
      {Key? key,
      required this.listMusic,
      required this.orientation,
      this.onClickItem})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SelectionListState();
  }
}

class _SelectionListState extends State<SectionList> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var oriList = (widget.orientation == ListOrientation.Horizontal)
        ? Axis.horizontal
        : Axis.vertical;

    var oriShimmer = (widget.orientation == ListOrientation.Horizontal)
        ? ShimmerOrientation.Horizontal
        : ShimmerOrientation.Vertical;


    var list = ListView.builder(
      scrollDirection: oriList,
      shrinkWrap: true,
      primary: true,
      itemBuilder: (_, i) {
        return MusicItem(
          songInfo: widget.listMusic[i],
          numLine: 2,
          orientation: oriShimmer,
          onTap: () {
            dLog("onTap MusicItem: ${widget.listMusic[i].title}");
            if (widget.onClickItem != null) {
              widget.onClickItem!(widget.listMusic[i]);
            }
          },
        );
      },
    );

    return Container(
        padding: const EdgeInsets.all(8),
        child: list).build(context);

    /*ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) =>
              widget.listMusic.map((e) =>  MusicItem(songInfo:  e)),
        ));*/
  }
}

/*Visibility(
child: Column(
children: [
Visibility(
visible: widget.isLoading == false,
maintainSize: true,
maintainAnimation: true,
maintainState: true,
maintainSemantics: true,
child: list),
Visibility(
visible: widget.isLoading == true,
maintainSize: true,
maintainAnimation: true,
maintainState: true,
maintainSemantics: true,
child: shimmer)
],
),
)*/
