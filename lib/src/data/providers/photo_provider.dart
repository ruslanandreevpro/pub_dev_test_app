import 'package:dio/dio.dart';
import 'package:pub_dev_test_app/src/core/constants/constants.dart';
import 'package:pub_dev_test_app/src/models/models.dart';

class PhotoProvider {

  Future<List<Photo>> getPhoto() async {
    final Dio _dio = Dio();
    final String _photoUrl = jsonPlaceholderBaseURL + '/photos';

    final _response = await _dio.get(_photoUrl);

    if (_response.statusCode == 200) {
      List<dynamic> photoJson = _response.data;
      return photoJson.map((photo) => Photo.fromJson(photo)).toList();
    } else {
      throw Exception('Ошибка загрузки изображений');
    }
  }
}