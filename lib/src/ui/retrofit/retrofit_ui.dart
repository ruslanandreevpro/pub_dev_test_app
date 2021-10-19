import 'package:flutter/material.dart';
import 'package:pub_dev_test_app/src/widgets/widgets.dart';

class RetrofitUI extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      appBar: CustomAppBar(
        scaffoldKey: _scaffoldKey,
        title: 'Пакет retrofit',
      ),
      drawer: CustomDrawer(),
      body: Container(),
    );
  }
}
