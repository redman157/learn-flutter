import 'package:myproject/beans/UsersBeans/geo.dart';

class Address {
  late String street;
  late String suite;
  late String city;
  late String zipcode;
  late Geo geo;

  Address.fromJson(Map<String, dynamic> map)
      : street = map["street"],
        suite = map["suite"],
        city = map["city"],
        zipcode = map["zipcode"],
        geo = Geo.fromJson(map["geo"]);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['street'] = street;
    data['suite'] = suite;
    data['city'] = city;
    data['zipcode'] = zipcode;
    data['geo'] = geo == null ? null : geo.toJson();
    return data;
  }
}
