import 'dart:convert';

import 'package:covid_19_tracker_app/View/world_states.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../Models/WorldStateModel.dart';
import 'Utilties/app_url.dart';

class StatesServices {
  // ignore: non_constant_identifier_names
  Future<WorldStateModel> getWorldStateApi() async {
    final response = await http.get(Uri.parse(AppUrl.worldStateApi));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return WorldStateModel.fromJson(data);
    } else {
      throw Exception('Error');
    }
  }

  Future<List<dynamic>> countriesListApi() async {
    // ignore: prefer_typing_uninitialized_variables
    var data;
    final response1 = await http.get(Uri.parse(AppUrl.countrylist));
    if (response1.statusCode == 200) {
      data = jsonDecode(response1.body);
      return data;
    } else {
      return data;
    }
  }
}
