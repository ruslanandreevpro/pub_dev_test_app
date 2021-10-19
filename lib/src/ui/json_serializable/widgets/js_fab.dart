import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pub_dev_test_app/src/bloc/bloc.dart';
import 'package:pub_dev_test_app/src/bloc/fruit_bloc/fruit_event.dart';

class JSFab extends StatelessWidget {
  const JSFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FruitBloc _fruitBloc = BlocProvider.of<FruitBloc>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          heroTag: 'Load',
          child: const Icon(LineIcons.download),
          backgroundColor: Colors.green,
          onPressed: () => _fruitBloc.add(FruitLoadEvent()),
        ),
        const SizedBox(width: 24.0),
        FloatingActionButton(
          heroTag: 'Clear',
          child: const Icon(LineIcons.trash),
          backgroundColor: Colors.red,
          onPressed: () => _fruitBloc.add(FruitClearEvent()),
        ),
      ],
    );
  }
}
