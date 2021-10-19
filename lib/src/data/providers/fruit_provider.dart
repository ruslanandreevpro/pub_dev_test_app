import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pub_dev_test_app/src/core/constants/constants.dart';
import 'package:pub_dev_test_app/src/models/models.dart';

class FruitProvider {

  Future<List<Fruit>> getFruits() async {
    final Dio _dio = Dio();
    final String _fruitUrl = fruityviceBaseURL + '/api/fruit/all';

    final _response = await _dio.get(_fruitUrl);

    if (_response.statusCode == 200) {
      List<dynamic> fruitJson = jsonDecode(_response.data);
      return fruitJson.map((fruit) => Fruit.fromJson(fruit)).toList();
    } else {
      throw Exception('Ошибка загрузки списка');
    }
  }
}