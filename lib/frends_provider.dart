import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:quizz_app1/frends_object.dart';

class FrendProvider {
  static Future<List<dynamic>> readJsonData() async {
    var jsonText = await rootBundle.loadString('data/frends.json');
    var data = json.decode(jsonText);
    return data["frends"];
  }

  static Future<List<FrendsObject>> getAllFrends() async {
    List<FrendsObject> lsResult = [];
    List<dynamic> data = await readJsonData();
    lsResult = data.map((e) => FrendsObject.fromJson(e)).toList();
    return lsResult;
  }

  static Future<List<FrendsObject>> searchMenus(String strSearch) async {
    List<FrendsObject> lsResult = [];
    List<dynamic> data = await readJsonData();
    data.forEach((element) {
      FrendsObject con = FrendsObject.fromJson(element);
      if (con.name.toUpperCase().contains(strSearch.toUpperCase()) ||
          con.point.contains(strSearch)) {
        lsResult.add(con);
      }
    });
    return lsResult;
  }
}
