import 'package:flutter/material.dart';
import 'package:pub_dev_test_app/src/widgets/widgets.dart';

class HomeUI extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      appBar: CustomAppBar(
        scaffoldKey: _scaffoldKey,
        title: 'Pub Dev Test App',
      ),
      drawer: CustomDrawer(),
      body: const Center(
        child: Text(
          'Демонстрация работы\nпакетов Flutter',
          style: TextStyle(
            fontSize: 20.0,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
