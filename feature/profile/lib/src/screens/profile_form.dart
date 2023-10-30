import 'package:core/constants/assets_path.dart';
import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

import '../components/app_bottom_navigation_bar.dart';
import '../components/signout_button.dart';

class ProfileForm extends StatelessWidget {
  const ProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    final AppColors appColors = AppColors.of(context);

    return Scaffold(
      backgroundColor: appColors.primaryBg,
      appBar: AppBar(
        elevation: AppDimens.ELEVATION_0,
        backgroundColor: appColors.secondaryBg,
        title: Text(
          LocaleKeys.profile.watchTr(context),
          style: AppFonts.normal15.copyWith(
            color: appColors.text,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  height: AppDimens.HEIGHT_64,
                  width: AppDimens.WIDTH_64,
                  AssetsPath.PROFILE,
                ),
                const SizedBox(height: AppDimens.HEIGHT_19),
                Text(
                  'Марипбек Чингиз',
                  style: AppFonts.bold24.copyWith(
                    color: appColors.text,
                  ),
                ),
                const SizedBox(
                  height: AppDimens.HEIGHT_14,
                ),
                Text(
                  'maripbekoff@gmail.com',
                  style: AppFonts.normal16.copyWith(
                    color: appColors.subText,
                  ),
                ),
              ],
            ),
          ),
          const SignOutButton(),
          const Spacer(flex: 3),
        ],
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
