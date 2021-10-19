import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pub_dev_test_app/src/bloc/bloc.dart';
import 'package:pub_dev_test_app/src/bloc/photo_bloc/photo_event.dart';

class FBFab extends StatelessWidget {
  const FBFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PhotoBloc _photoBloc = BlocProvider.of<PhotoBloc>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          heroTag: 'Load',
          child: const Icon(LineIcons.download),
          backgroundColor: Colors.green,
          onPressed: () => _photoBloc.add(PhotoLoadEvent()),
        ),
        const SizedBox(width: 24.0),
        FloatingActionButton(
          heroTag: 'Clear',
          child: const Icon(LineIcons.trash),
          backgroundColor: Colors.red,
          onPressed: () => _photoBloc.add(PhotoClearEvent()),
        ),
      ],
    );
  }
}
