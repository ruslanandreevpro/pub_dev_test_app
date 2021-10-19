import 'package:flutter/material.dart';
import 'package:pub_dev_test_app/src/models/models.dart';
import 'package:pub_dev_test_app/src/widgets/widgets.dart';

class FreezedUI extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  final user = User(name: 'Руслан Андреев', age: 40);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      appBar: CustomAppBar(
        scaffoldKey: _scaffoldKey,
        title: 'Пакет freezed',
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Text(
          'Автор приложения: ${user.name}\nВозраст: ${user.age}\n\nВозраст изменился: ${user.copyWith(age: 42).age}',
          style: const TextStyle(
              fontSize: 20.0
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
