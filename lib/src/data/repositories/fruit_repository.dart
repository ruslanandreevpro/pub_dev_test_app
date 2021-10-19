import 'package:pub_dev_test_app/src/data/providers/providers.dart';
import 'package:pub_dev_test_app/src/models/models.dart';

class FruitRepository {
  final FruitProvider _fruitProvider = FruitProvider();

  Future<List<Fruit>> getAllFruits() => _fruitProvider.getFruits();
}