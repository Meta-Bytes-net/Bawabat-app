import 'package:bwabat/core/resources/app_assets.dart';
import 'package:bwabat/features/main_layout/ui/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class MainLayoutScreen extends StatefulWidget {
  const MainLayoutScreen({super.key});

  @override
  State<MainLayoutScreen> createState() => _MainLayoutScreenState();
}

class _MainLayoutScreenState extends State<MainLayoutScreen>
    with TickerProviderStateMixin {
  late PersistentTabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PersistentTabController(initialIndex: 1);
    final animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    final animationValue = Tween<double>(begin: 0.toDouble(), end: 1.toDouble())
        .animate(animationController);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: PersistentTabView(
        context,
        controller: _controller,

        screens: _buildScreens(),
        items: _navBarsItems(),
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardAppears: true,

        popBehaviorOnSelectedNavBarItemPress: PopBehavior.all,
        padding: const EdgeInsets.only(
          bottom: 10,
        ),
        navBarHeight: 70,
        backgroundColor: Colors.black87,
        isVisible: true,
        animationSettings: const NavBarAnimationSettings(
          navBarItemAnimation: ItemAnimationSettings(
            // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 400),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: ScreenTransitionAnimationSettings(
            animateTabTransition: true,
            duration: Duration(milliseconds: 200),
            screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
          ),
        ),
        confineToSafeArea: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(20.r),
        ),
        margin: const EdgeInsets.all(5),
        navBarStyle: NavBarStyle.style15,
      )),
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: SvgPicture.asset(
            Assets.svgsKeybordIcon,
          ),
        ),
        title: ("Manual"),
        activeColorPrimary: const Color(0xFF1C61C6),
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          Assets.svgsHomeIcon,
          height: 20,
          width: 20,
        ),
        inactiveIcon: SvgPicture.asset(
          Assets.svgsHomeIcon,
          height: 28,
          width: 28,
        ),
        activeColorPrimary: const Color(0xFF1C61C6),
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: SvgPicture.asset(
            Assets.svgsHistoryIcon,
          ),
        ),
        title: ("History"),
        activeColorPrimary: const Color(0xFF1C61C6),
        inactiveColorPrimary: Colors.white,
      ),
    ];
  }

  List<Widget> _buildScreens() {
    return [const Scaffold(), const HomeScreen(), const Scaffold()];
  }
}
