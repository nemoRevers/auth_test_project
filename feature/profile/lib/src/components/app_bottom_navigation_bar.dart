import 'package:core/constants/assets_path.dart';
import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/cupertino.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({super.key});

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final AppColors appColors = AppColors.of(context);

    return CupertinoTabBar(
      currentIndex: selectedIndex,
      activeColor: appColors.buttonAccent,
      onTap: (int index) {
        setState(() {
          selectedIndex = index;
        });
      },
      backgroundColor: appColors.secondaryBg,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AssetsPath.NEWS,
            color:
                selectedIndex == 0 ? appColors.buttonAccent : appColors.button,
          ),
          label: LocaleKeys.bottomNavigationBar_news.watchTr(context),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AssetsPath.POSITION,
            color:
                selectedIndex == 1 ? appColors.buttonAccent : appColors.button,
          ),
          label: LocaleKeys.bottomNavigationBar_map.watchTr(context),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AssetsPath.LIKE,
            color:
                selectedIndex == 2 ? appColors.buttonAccent : appColors.button,
          ),
          label: LocaleKeys.bottomNavigationBar_like.watchTr(context),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AssetsPath.PROFILE,
            color:
                selectedIndex == 3 ? appColors.buttonAccent : appColors.button,
            height: 22.5,
            width: 22.5,
          ),
          label: LocaleKeys.bottomNavigationBar_profile.watchTr(context),
        ),
      ],
    );
  }
}
