import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/APIS.dart';
import 'package:myproject/DioClient.dart';
import 'package:myproject/beans/UsersBeans/user_bean.dart';
import 'package:myproject/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';




class Users extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UserState();
}

class _UserState extends State<Users> {
  List<UserBean>? _data;
  @override
  void initState() {
    super.initState();
    DioClient().getUsers().then((value) => {
      setState(() {
        _data = value?.cast<UserBean>();
      })
    }).onError((error, stackTrace) => {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User"),
      ),
      body: Stack(
        children: [
          Visibility(
            child: ListView.builder(
              itemCount: _data == null ? 0 : _data?.length,
              itemBuilder: (context, index) {
                final item = _data?[index];
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.cyan,
                  ),
                  title: Text(item?.name == null ? '' : item!.name),
                  subtitle: Text(item?.username == null ? '' : item!.username),
                  isThreeLine: true,
                  trailing: Text(item?.website == null ? '' : item!.website),
                );
              }),
          ),
          Visibility(
              child: Container(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
          )
        ],
      )
    );
  }
}
