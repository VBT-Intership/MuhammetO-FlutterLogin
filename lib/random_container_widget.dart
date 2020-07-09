import 'dart:math';

import 'package:flutter/material.dart';

class RandomColorContainer extends StatelessWidget {
  final Widget child;

  const RandomColorContainer({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.primaries[Random().nextInt(17)],
      child: child,
    );
  }
}
