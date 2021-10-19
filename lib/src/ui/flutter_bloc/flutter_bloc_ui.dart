import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pub_dev_test_app/src/bloc/bloc.dart';
import 'package:pub_dev_test_app/src/data/repositories/repositories.dart';
import 'package:pub_dev_test_app/src/ui/flutter_bloc/widgets/flutter_bloc_widgets.dart';
import 'package:pub_dev_test_app/src/widgets/widgets.dart';

class FlutterBlocUI extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final PhotoRepository _photoRepository = PhotoRepository();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PhotoBloc>(
      create: (context) => PhotoBloc(photoRepository: _photoRepository),
      child: Scaffold(
        key: _scaffoldKey,
        drawerEnableOpenDragGesture: false,
        appBar: CustomAppBar(
          scaffoldKey: _scaffoldKey,
          title: 'Пакеты flutter_bloc, dio',
        ),
        drawer: CustomDrawer(),
        floatingActionButton: const FBFab(),
        body: const FBPhotoList(),
      ),
    );
  }
}
