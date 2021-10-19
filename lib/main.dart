import 'package:flutter/material.dart';
import 'package:pub_dev_test_app/src/services/services.dart';
import 'package:pub_dev_test_app/src/ui/ui.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();
  runApp(PubDevTestApp());
}

class PubDevTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pub Dev Test App',
      home: HomeUI(),
    );
  }
}
