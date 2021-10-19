import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pub_dev_test_app/src/ui/ui.dart';
import 'package:pub_dev_test_app/src/widgets/custom_drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 270.0,
        color: Colors.white,
        child: ListView(
          children: [
            CustomDrawerItem(
              icon: const Icon(LineIcons.cube),
              title: 'BLoC + DIO',
              packageName: 'flutter_bloc',
              pageName: FlutterBlocUI(),
            ),
            CustomDrawerItem(
              icon: const Icon(LineIcons.cube),
              title: 'jsonSerializable',
              packageName: 'json_serializable',
              pageName: JsonSerializableUI(),
            ),
            CustomDrawerItem(
              icon: const Icon(LineIcons.cube),
              title: 'Flutter Local Notifications',
              packageName: 'flutter_local_notifications',
              pageName: FlutterLocalNotificationsUI(),
            ),
            CustomDrawerItem(
              icon: const Icon(LineIcons.cube),
              title: 'Formz',
              packageName: 'formz',
              pageName: FormzUI(),
            ),
            CustomDrawerItem(
              icon: const Icon(LineIcons.cube),
              title: 'Freezed',
              packageName: 'freezed',
              pageName: FreezedUI(),
            ),
            CustomDrawerItem(
              icon: const Icon(LineIcons.cube),
              title: 'Retrofit',
              packageName: 'retrofit',
              pageName: RetrofitUI(),
            ),
          ],
        ),
      ),
    );
  }
}
