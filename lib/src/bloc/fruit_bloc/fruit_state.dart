abstract class FruitState {}

class FruitEmptyState extends FruitState {}

class FruitLoadingState extends FruitState {}

class FruitLoadedState extends FruitState {
  List<dynamic> loadedFruitList;

  FruitLoadedState({required this.loadedFruitList});
}

class FruitErrorState extends FruitState {}