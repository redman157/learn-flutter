import 'package:flutter/material.dart';

class ListBannerView extends StatefulWidget {
  final List<Banner> listBanner;
  const ListBannerView({Key? key, required this.listBanner}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ListBannerViewState();
  }
}

class _ListBannerViewState extends State<ListBannerView> {
  int _currentIndex = 0;
  late List<Widget> _bannerList;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
