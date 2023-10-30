import 'package:core_ui/core_ui.dart';
import 'package:flutter/cupertino.dart';

class AuthButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;

  const AuthButton({
    super.key,
    required this.child,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.symmetric(
        vertical: AppDimens.PADDING_20,
      ),
      color: AppColors.of(context).buttonAccent,
      borderRadius: BorderRadius.circular(
        AppDimens.PADDING_6,
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
