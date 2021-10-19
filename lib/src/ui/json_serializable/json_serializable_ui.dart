import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pub_dev_test_app/src/bloc/bloc.dart';
import 'package:pub_dev_test_app/src/data/repositories/repositories.dart';
import 'package:pub_dev_test_app/src/ui/json_serializable/widgets/json_serializable_widgets.dart';
import 'package:pub_dev_test_app/src/widgets/widgets.dart';

class JsonSerializableUI extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final FruitRepository _fruitRepository = FruitRepository();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FruitBloc>(
      create: (context) => FruitBloc(fruitRepository: _fruitRepository),
      child: Scaffold(
        key: _scaffoldKey,
        drawerEnableOpenDragGesture: false,
        appBar: CustomAppBar(
          scaffoldKey: _scaffoldKey,
          title: 'Пакет json_serializable',
        ),
        drawer: CustomDrawer(),
        floatingActionButton: const JSFab(),
        body: const JSList(),
      ),
    );
  }
}
