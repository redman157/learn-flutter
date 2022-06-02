
import 'package:dio/dio.dart';
import 'package:myproject/models/comment.dart';

class UserRepository{
  Future<List?> getComments(int start, int limit) async {
    // var response = await http.get(Uri.parse(APIS.usersList), headers: {"Accept": "application/json; charset=UTF-8"});
    String url = "https://jsonplaceholder.typicode.com/comments?_start=$start&limit=$limit";
    var response = await Dio().get(url);
    try{
      if (response.statusCode == 200) {
        var comments = response.data as List;
        var listUsers = comments.map((index) => Comment.fromJson(index)).toList();
        return listUsers;
      } else {
        throw Exception('Failed to load users');
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}