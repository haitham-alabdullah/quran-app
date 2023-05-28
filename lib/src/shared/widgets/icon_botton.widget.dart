import 'package:flutter/material.dart';
import 'package:quran/src/classes/constants.class.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    required this.onPressed,
    required this.icon,
    this.tooltip,
    this.theme,
    super.key,
  });
  final VoidCallback onPressed;
  final IconData icon;
  final IconThemeData? theme;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    final button = IconButton(
      onPressed: onPressed,
      icon: theme is IconThemeData
          ? IconTheme(
              data: theme as IconThemeData,
              child: Icon(icon),
            )
          : Icon(icon),
      splashRadius: 20,
    );
    if (tooltip is String && tooltip != '') {
      return Tooltip(
        message: tooltip,
        padding: const EdgeInsets.all(5),
        height: 20,
        enableFeedback: true,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Constants.background(context),
        ),
        child: button,
      );
    }
    return button;
  }
}
