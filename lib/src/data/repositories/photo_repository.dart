import 'package:pub_dev_test_app/src/data/providers/providers.dart';
import 'package:pub_dev_test_app/src/models/models.dart';

class PhotoRepository {
  final PhotoProvider _photoProvider = PhotoProvider();

  Future<List<Photo>> getAllPhotos() => _photoProvider.getPhoto();
}