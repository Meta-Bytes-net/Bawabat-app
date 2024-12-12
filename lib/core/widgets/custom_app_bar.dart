import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/text_styles.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isHome;
  final Widget? leadingWidget;
  final List<Widget>? actions;
  const MyCustomAppBar(
      {super.key,
      this.leadingWidget,
      required this.title,
      this.isHome = false,
      this.actions});

  // Here's the magic! Tell Flutter the preferred size
  @override
  Size get preferredSize => Size.fromHeight(
        isHome ? 120.sp : 70.sp,
      );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // toolbarHeight: isHome ? 320.sp : 70.sp,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(19.sp),
          bottomRight: Radius.circular(19.sp),
        ),
      ),
      leading: leadingWidget,
      // backgroundColor: ColorsManager.darkAppBarBackGround,
      centerTitle: true,
      iconTheme: const IconThemeData(color: Colors.white),
      // title: isHome
      // ? RichText(
      //     text: TextSpan(
      //       children: <TextSpan>[
      //         TextSpan(text: 'META ', style: TextStyles.font26whiteRegular),
      //         TextSpan(
      //           style: TextStyles.font26whiteRegular
      //               .copyWith(color: ColorsManager.containerTitleColor),
      //           text: 'B',
      //         ),
      //       ],
      //     ),
      //   )
      //     : Text(title),
      title: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(text: 'META ', style: TextStyles.font26whiteRegular),
            TextSpan(
              style: TextStyles.font26whiteRegular,
              // .copyWith(color: ColorsManager.containerTitleColor),
              text: 'B',
            ),
          ],
        ),
      ),
      actions: actions,
    );
  }
}
