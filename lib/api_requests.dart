import 'dart:convert';

import 'package:dio/dio.dart';

final hostname = "https://memoryexpress.herokuapp.com/";

Future<List<dynamic>> getAllCards() async {
  var data = (await Dio().get(hostname)).data;
  print(data.toString());
  return data;
}
