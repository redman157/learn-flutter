
class Company {

  String name;
  String catchPhrase;
  String bs;

  Company.fromJson(Map<String, dynamic> map):
        name = map["name"],
        catchPhrase = map["catchPhrase"],
        bs = map["bs"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['catchPhrase'] = catchPhrase;
    data['bs'] = bs;
    return data;
  }
}