import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/base_bloc/comment_bloc.dart';
import 'package:myproject/base_bloc/comment_event.dart';
import 'package:myproject/base_bloc/comment_state.dart';
import 'package:myproject/base_bloc/user_bloc.dart';
import 'package:myproject/base_bloc/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myproject/models/comment.dart';
import 'package:myproject/repository/user_repository.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
        create: (context) => CommentBloc(
            RepositoryProvider.of<UserRepository>(context),
        )..add(LoadCommentEvent()),
        child:  SafeArea(
          child:  Scaffold(
            appBar: AppBar(
              title: Text('Hello world'),
            ),
            body: BlocBuilder<CommentBloc, CommentState>(
              builder: (context, state){
                if (state is CommentLoadingState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is CommentLoadedState){
                  return ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      Comment item = state.comment[index];
                      return ListTile(
                        leading: Text(item.id.toString()),
                        title: Text(item.name,
                            style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        isThreeLine: true,
                        subtitle: Text(
                          item.email,
                          style: TextStyle(fontSize: 13),
                        ),
                      );
                    },
                    itemCount: 20,
                  );
                }
                if (state is CommentErrorState){
                  return Center(
                    child: Text(state.error.toString()),
                  );
                }
                return Container();
              },
            ),
          ),
        )
    );
  }
/*const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();


  */

}

/*
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

}*/
