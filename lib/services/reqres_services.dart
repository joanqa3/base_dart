import 'dart:convert';

import 'package:base_dart/models/persons_model.dart';
import 'package:http/http.dart' as http;

class ServicesReqresApi {
  void getReqRespService() {
    var url = Uri.parse("https://reqres.in/api/users?page=2");
    print(url);
    http.get(url).then((response) {
      print(response);
      final resReqRes = Persons.fromJson(jsonDecode(response.body));
      print(resReqRes.data);
    });
    print('Hola desde mi API');
  }
}
