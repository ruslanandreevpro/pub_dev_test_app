import 'package:flutter/material.dart';
import 'package:pub_dev_test_app/src/widgets/widgets.dart';

class Fab extends StatelessWidget {
  final BuildContext context;
  final onPressLoad;
  final onPressClear;

  const Fab({Key? key, required this.context, this.onPressLoad, required this.onPressClear}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FABLoad(context: context, onPressed: onPressLoad),
        const SizedBox(width: 24.0),
        FABClear(context: context, onPressed: onPressClear),
      ],
    );
  }
}
