import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class FABClear extends StatelessWidget {
  final BuildContext context;
  final onPressed;

  const FABClear({Key? key, required this.context, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'Clear',
      child: const Icon(LineIcons.trash),
      backgroundColor: Colors.red,
      onPressed: onPressed,
    );
  }
}
