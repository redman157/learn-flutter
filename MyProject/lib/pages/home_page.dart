
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/pages/users_page.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  int _selectedPage = 0;

  final _pageOptions = [Users(), Users(), Users()];

  var v1 =
  const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'USERS');

  var v2 = const BottomNavigationBarItem(
      icon: Icon(Icons.local_post_office), label: 'POSTS');

  var v3 =
  const BottomNavigationBarItem(icon:  Icon(Icons.image),label: 'IMAGES');

  var v4 = const BottomNavigationBarItem(
      icon: Icon(Icons.comment), label: 'COMMENTS');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int index){
          setState(() {
            _selectedPage = index;
          });
        },
        elevation: 2,
        items: <BottomNavigationBarItem>[v1, v2, v3],
      ),
    );
  }

}