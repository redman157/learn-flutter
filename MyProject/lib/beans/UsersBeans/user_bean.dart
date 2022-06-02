
import 'package:myproject/beans/UsersBeans/address.dart';
import 'package:myproject/beans/UsersBeans/company.dart';

class UserBean {
  int id;
  String name;
  String username;
  String email;
  Address? address;
  String phone;
  String website;
  Company? company;

  UserBean.fromJson(Map<String, dynamic> map):
        id = map["id"],
        name = map["name"],
        username = map["username"],
        email = map["email"],
        address = Address.fromJson(map["address"]),
        phone = map["phone"],
        website = map["website"],
        company = Company.fromJson(map["company"]);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['username'] = username;
    data['email'] = email;
    data['address'] = address == null ? null : address?.toJson();
    data['phone'] = phone;
    data['website'] = website;
    data['company'] = company == null ? null : company?.toJson();
    return data;
  }
}