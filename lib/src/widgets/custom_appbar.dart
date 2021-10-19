import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pub_dev_test_app/src/ui/ui.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final String title;

  CustomAppBar({
    required this.scaffoldKey,
    required this.title,
  });

  @override
  Size get preferredSize => const Size(double.infinity, 56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(LineIcons.bars),
        onPressed: () => scaffoldKey.currentState!.openDrawer(),
      ),
      actions: [
        IconButton(
          icon: const Icon(LineIcons.home),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeUI()));
          },
        ),
      ],
    );
  }
}
