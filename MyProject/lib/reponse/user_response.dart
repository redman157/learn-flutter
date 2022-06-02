

import 'package:dio/dio.dart';
import 'package:myproject/APIS.dart';
import 'package:myproject/models/beans/UsersBeans/user_bean.dart';
import 'package:myproject/models/comment.dart';

class UserResponse{
  static Future<List?> getUsers() async {
    // var response = await http.get(Uri.parse(APIS.usersList), headers: {"Accept": "application/json; charset=UTF-8"});
    var response = await Dio().get(APIS.usersList);
    try{
      if (response.statusCode == 200) {
        var getUsersData = response.data as List;
        var listUsers = getUsersData.map((index) => UserBean.fromJson(index)).toList();
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
