import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/cupertino.dart';

import '../bloc/profile_bloc.dart';

class SignOutButton extends StatelessWidget {
  const SignOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    final AppColors appColors = AppColors.of(context);
    return CupertinoButton(
      borderRadius: BorderRadius.circular(AppDimens.RADIUS_0),
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.PADDING_29,
        vertical: AppDimens.PADDING_20,
      ),
      alignment: Alignment.centerLeft,
      color: appColors.secondaryBg,
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (BuildContext context, ProfileState state) {
          return Text(
            LocaleKeys.signOut.watchTr(context),
            textAlign: TextAlign.left,
            style: AppFonts.normal16.copyWith(
              color: state.isLoading ? appColors.subText : appColors.warning,
            ),
          );
        },
      ),
      onPressed: () {
        context.read<ProfileBloc>().add(const SignOut());
      },
    );
  }
}
