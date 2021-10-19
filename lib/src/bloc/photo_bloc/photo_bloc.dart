import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pub_dev_test_app/src/bloc/photo_bloc/photo_event.dart';
import 'package:pub_dev_test_app/src/bloc/photo_bloc/photo_state.dart';
import 'package:pub_dev_test_app/src/data/repositories/repositories.dart';
import 'package:pub_dev_test_app/src/models/models.dart';

class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  PhotoRepository photoRepository;

  PhotoBloc({required this.photoRepository}) : super(PhotoEmptyState());

  @override
  Stream<PhotoState> mapEventToState(PhotoEvent event) async* {
    if (event is PhotoLoadEvent) {
      yield PhotoLoadingState();
      try {
        final List<Photo> _loadedPhotoList = await photoRepository.getAllPhotos();
        yield PhotoLoadedState(
          loadedPhotoList: _loadedPhotoList,
        );
      } catch (_) {
        yield PhotoErrorState();
      }
    } else if (event is PhotoClearEvent) {
      yield PhotoEmptyState();
    }
  }
}