import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:myproject/Movie.dart';
import 'package:myproject/pages/home_page.dart';
import 'package:myproject/repository/user_repository.dart';
import 'package:tmdb_api/tmdb_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
final tmdbApiKey = TMDB(
  //TMDB instance
  ApiKeys(
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyMDFlZTM3YjU3MTdkNWNkMWJhNjkxZjE0OTQ2NTA4ZiIsInN1YiI6IjYyOTcyZGIzYTQ0ZDA5NTI3NWU0MjFiNCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.M_SHrqgHhxXNg9UoO-NAXLQy8q4N3EYA7a7dLCmoVjw',
      'apiReadAccessTokenv4'), //ApiKeys instance with your keys,
  dio: Dio(),
  defaultLanguage: 'en-US',
  logConfig: const ConfigLogger(
    showLogs: true, //must be true than only all other logs will be shown
    showErrorLogs: true,
  ),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: RepositoryProvider(
          create: (context) => UserRepository(),
          child: HomePage(),
        ));
  }
}
