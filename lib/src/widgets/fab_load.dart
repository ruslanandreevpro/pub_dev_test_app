import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class FABLoad extends StatelessWidget {
  final BuildContext context;
  final onPressed;

  const FABLoad({Key? key, required this.context, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'Load',
      child: const Icon(LineIcons.download),
      backgroundColor: Colors.green,
      onPressed: onPressed,
    );
  }
}
