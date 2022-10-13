import 'package:base_dart/models/data_persons_model.dart';
import 'package:base_dart/models/suport_model.dart';

class Persons {
  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<Data>? data; // Atención a la lista ;)
  Support? support;

  Persons(
      {this.page,
      this.perPage,
      this.total,
      this.totalPages,
      this.data,
      this.support});

  Persons.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    perPage = json['per_page'];
    total = json['total'];
    totalPages = json['total_pages'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    support =
        json['support'] != null ? Support?.fromJson(json['support']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['page'] = page;
    data['per_page'] = perPage;
    data['total'] = total;
    data['total_pages'] = totalPages;
    data['data'] = List<Data>.from([data]); // Esta es la corrección para DATA
    //if (data != null) {
    //  data['data'] = data?.map((v) => v.toJson()).toList();
    //}
    if (support != null) {
      data['support'] = support?.toJson();
    }
    return data;
  }
}
