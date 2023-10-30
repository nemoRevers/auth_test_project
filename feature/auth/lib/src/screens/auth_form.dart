import 'package:core/core.dart';
import 'package:core/src/localization/generated/locale_keys.g.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

import '../bloc/auth_bloc.dart';
import '../components/auth_button.dart';
import '../components/auth_text_textfield.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({super.key});

  @override
  Widget build(BuildContext context) {
    final AppColors appColors = AppColors.of(context);

    return Scaffold(
      backgroundColor: appColors.primaryBg,
      appBar: AppBar(
        elevation: AppDimens.ELEVATION_0,
        backgroundColor: appColors.secondaryBg,
        title: Text(
          LocaleKeys.auth.watchTr(context),
          style: AppFonts.normal15.copyWith(
            color: appColors.text,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          const Spacer(),
          AuthTextField(
            placeholder: LocaleKeys.loginOrEmail.watchTr(context),
          ),
          Divider(
            height: AppDimens.HEIGHT_0,
            thickness: AppDimens.THICKNESS_1,
            indent: AppDimens.INDENT_16,
            color: AppColors.of(context).divider,
            endIndent: AppDimens.INDENT_16,
          ),
          AuthTextField(
            placeholder: LocaleKeys.password.watchTr(context),
          ),
          const SizedBox(
            height: AppDimens.HEIGHT_32,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: AppDimens.PADDING_16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                AuthButton(
                  onPressed: () {
                    context
                        .read<AuthBloc>()
                        .add(const LoginEvent('login', 'password'));
                  },
                  child: Text(
                    LocaleKeys.login.watchTr(context),
                    style: AppFonts.bold16,
                  ),
                ),
                const SizedBox(
                  height: AppDimens.HEIGHT_19,
                ),
                AuthButton(
                  onPressed: () {
                    context
                        .read<AuthBloc>()
                        .add(const LoginEvent('login', 'password'));
                  },
                  child: Text(
                    LocaleKeys.signUp.watchTr(context),
                    style: AppFonts.bold16,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
