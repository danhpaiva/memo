import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:memo/application/theme/theme_controller.dart';

/// Destructive alternative to [ElevatedButton].
///
/// Used in scenarios that emphasizes an action with impactful consequences.
class DestructiveButton extends HookWidget {
  const DestructiveButton({required this.onPressed, required this.child, Key? key}) : super(key: key);

  final Widget child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: useTheme().destructiveSwatch),
      onPressed: onPressed,
      child: child,
    );
  }
}
