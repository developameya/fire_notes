import 'package:flutter/material.dart';

class CenteredMessage extends StatelessWidget {
  final Widget child;
  const CenteredMessage({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: child);
  }
}
