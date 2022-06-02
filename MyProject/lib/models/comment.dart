
class Comment{
  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  Comment.fromJson(Map<String, dynamic> map)
      : postId = map["postId"],
        id = map["id"],
        name = map["name"],
        body = map["body"],
        email = map["email"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['postId'] = postId;
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['body'] = body;
    return data;
  }
}