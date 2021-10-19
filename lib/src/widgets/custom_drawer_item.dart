import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  final Widget icon;
  final String title;
  final String packageName;
  final Widget pageName;

  CustomDrawerItem({
    required this.icon,
    required this.title,
    required this.packageName,
    required this.pageName,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(title),
      onTap: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => pageName));
      },
    );
  }

  Future<void> showAlert(BuildContext context) {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(title),
        content: Text('Выбран пакет $packageName'),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'),
            onPressed: () => Navigator.pop(context, 'OK'),
          ),
        ],
      ),
    );
  }
}
