
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myproject/main.dart';

@JsonSerializable()
class Movie{
  Movie({
    required this.movieId,
  });
  @JsonKey(name: 'movieId')
  int movieId;
  
  factory Movie.fromJson(Map<String, dynamic> json) => Movie(movieId: json["movie_id"]);
}

class MovieRequest{
  final Dio _dio = Dio();
  String base_url = 'https://api.themoviedb.org/3/movie/157336?api_key=${tmdbApiKey.v3}&language=${tmdbApiKey.defaultLanguage}';
  Future<Movie?> getMovies() async{
    try{
      Response movieData = await _dio.get(base_url);
      log('QQQ: ${movieData.data}');
      Movie movie = Movie.fromJson(movieData.data);
      return movie;
    }on Exception catch (e){
      log(e.toString());
      return null;
    }

  }
}