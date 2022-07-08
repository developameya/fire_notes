import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';

extension RoundedFlushBar on FlushbarHelper {
  static Flushbar createRoundedErrorBar(
      {required String message,
      String? title,
      Duration duration = const Duration(seconds: 3)}) {
    return Flushbar(
      title: title,
      message: message,
      icon: Icon(
        Icons.warning,
        size: 28.0,
        color: Colors.red[300],
      ),
      leftBarIndicatorColor: Colors.red[300],
      duration: duration,
      borderRadius: BorderRadius.circular(10.0),
      margin: const EdgeInsets.all(8.0),
    );
  }

  /// Get a flushbar that can receive a user action through a button.
  static Flushbar createRoundedActionBar(
      {required String message,
      required Widget button,
      String? title,
      Duration duration = const Duration(seconds: 3)}) {
    return Flushbar(
      title: title,
      message: message,
      duration: duration,
      mainButton: button,
      borderRadius: BorderRadius.circular(10.0),
      margin: const EdgeInsets.all(8.0),
    );
  }
}
