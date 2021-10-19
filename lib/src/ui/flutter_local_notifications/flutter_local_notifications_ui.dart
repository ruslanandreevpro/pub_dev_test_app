import 'package:flutter/material.dart';
import 'package:pub_dev_test_app/src/services/services.dart';
import 'package:pub_dev_test_app/src/widgets/widgets.dart';

class FlutterLocalNotificationsUI extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final NotificationService _notificationService = NotificationService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      appBar: CustomAppBar(
        scaffoldKey: _scaffoldKey,
        title: 'Пакет flutter_local_notifications',
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Показать уведомление'),
              onPressed: () {
                _notificationService.showNotification();
              },
            ),
            ElevatedButton(
              child: const Text('Отмена всех уведомлений'),
              onPressed: () {
                _notificationService.cancelAllNotifications();
              },
            ),
          ],
        ),
      ),
    );
  }
}
