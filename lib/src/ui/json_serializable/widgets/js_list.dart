import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pub_dev_test_app/src/bloc/bloc.dart';
import 'package:pub_dev_test_app/src/bloc/fruit_bloc/fruit_state.dart';

class JSList extends StatelessWidget {
  const JSList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FruitBloc, FruitState>(
      builder: (context, state) {
        if (state is FruitEmptyState) {
          return const Center(
            child: Text('Нет данных для отображения\nНажмите кнопку "Загрузить"', textAlign: TextAlign.center,),
          );
        }

        if (state is FruitLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is FruitLoadedState) {
          return Container(
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            child: Column(
              children: [
                const Text(
                  'Список фруктов',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24.0),
                Expanded(
                  child: ListView.builder(
                    itemCount: state.loadedFruitList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        color: index % 2 == 0 ? Colors.grey.withOpacity(0.25) : Colors.white,
                        child: ListTile(
                          contentPadding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          leading: Text('ID: ${state.loadedFruitList[index].id}'),
                          title: Text(
                            '${state.loadedFruitList[index].name}',
                            style: const TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          trailing: const Icon(LineIcons.infoCircle),
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

        if (state is FruitErrorState) {
          return const Center(
            child: Text('Ошибка загрузки данных'),
          );
        }

        return Container();
      },
    );
  }
}
