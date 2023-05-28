import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Functions {
  static void showAlertDialog(
    BuildContext context, {
    String? title,
    required Widget content,
    List<Widget>? action,
    VoidCallback? confirmCallback,
  }) {
    if (Platform.isIOS) {
      showIosAlertDialog(
        context,
        title: title,
        content: content,
        action: action,
        confirmCallback: confirmCallback,
      );
    } else {
      showAndroidAlertDialog(
        context,
        title: title,
        content: content,
        action: action,
        confirmCallback: confirmCallback,
      );
    }
  }

  static void showIosAlertDialog(
    BuildContext context, {
    String? title,
    required Widget content,
    List<Widget>? action,
    VoidCallback? confirmCallback,
  }) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text(title ?? 'Attention'),
        content: content,
        actions: action ??
            <CupertinoDialogAction>[
              CupertinoDialogAction(
                isDefaultAction: true,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('No'),
              ),
              CupertinoDialogAction(
                isDestructiveAction: true,
                onPressed: () {
                  Navigator.pop(context);
                  confirmCallback?.call();
                },
                child: const Text('Yes'),
              ),
            ],
      ),
    );
  }

  static void showAndroidAlertDialog(
    BuildContext context, {
    String? title,
    required Widget content,
    List<Widget>? action,
    VoidCallback? confirmCallback,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(title ?? 'Attention'),
        content: content,
        actions: action ??
            <Widget>[
              TextButton(
                autofocus: true,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('No'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.red,
                ),
                onPressed: () {
                  Navigator.pop(context);
                  confirmCallback?.call();
                },
                child: const Text('Yes'),
              ),
            ],
      ),
    );
  }
}
