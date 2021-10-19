import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pub_dev_test_app/src/bloc/bloc.dart';
import 'package:pub_dev_test_app/src/bloc/photo_bloc/photo_state.dart';

class FBPhotoList extends StatelessWidget {
  const FBPhotoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotoBloc, PhotoState>(
      builder: (context, state) {
        if (state is PhotoEmptyState) {
          return const Center(
            child: Text('Нет данных для отображения\nНажмите кнопку "Загрузить"', textAlign: TextAlign.center,),
          );
        }

        if (state is PhotoLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is PhotoLoadedState) {
          return Container(
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            child: Column(
              children: [
                const Text(
                  'Список изображений',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24.0),
                Expanded(
                  child: ListView.builder(
                    itemCount: state.loadedPhotoList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        color: index % 2 == 0 ? Colors.grey.withOpacity(0.25) : Colors.white,
                        child: ListTile(
                          contentPadding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          leading: Image.network(state.loadedPhotoList[index].thumbnailUrl),
                          title: Text(
                            '${state.loadedPhotoList[index].title}',
                            style: const TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          subtitle: Text(
                            'ID: ${state.loadedPhotoList[index].id}',
                            style: const TextStyle(
                              fontSize: 10.0,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          onTap: () {},
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        }

        if (state is PhotoErrorState) {
          return const Center(
            child: Text('Ошибка загрузки данных'),
          );
        }

        return Container();
      },
    );
  }
}
