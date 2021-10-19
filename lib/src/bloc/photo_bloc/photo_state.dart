abstract class PhotoState {}

class PhotoEmptyState extends PhotoState {}

class PhotoLoadingState extends PhotoState {}

class PhotoLoadedState extends PhotoState {
  List<dynamic> loadedPhotoList;

  PhotoLoadedState({required this.loadedPhotoList});
}

class PhotoErrorState extends PhotoState {}