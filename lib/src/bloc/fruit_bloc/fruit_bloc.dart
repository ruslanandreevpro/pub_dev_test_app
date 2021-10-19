import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pub_dev_test_app/src/bloc/fruit_bloc/fruit_event.dart';
import 'package:pub_dev_test_app/src/bloc/fruit_bloc/fruit_state.dart';
import 'package:pub_dev_test_app/src/data/repositories/repositories.dart';
import 'package:pub_dev_test_app/src/models/models.dart';

class FruitBloc extends Bloc<FruitEvent, FruitState> {
  FruitRepository fruitRepository;

  FruitBloc({required this.fruitRepository}) : super(FruitEmptyState());

  @override
  Stream<FruitState> mapEventToState(FruitEvent event) async* {
    if (event is FruitLoadEvent) {
      yield FruitLoadingState();
      try {
        final List<Fruit> _loadedFruitList = await fruitRepository.getAllFruits();
        yield FruitLoadedState(
          loadedFruitList: _loadedFruitList,
        );
      } catch (_) {
        yield FruitErrorState();
      }
    } else if (event is FruitClearEvent) {
      yield FruitEmptyState();
    }
  }
}