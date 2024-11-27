import 'package:bwabat/core/routing/app_router.dart';
import 'package:bwabat/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'helpers/navigator_helper.dart';

class BwabatApp extends StatelessWidget {
  final AppRouter appRouter;
  const BwabatApp({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        child: MaterialApp(
          navigatorKey: NavigationService.navigatorkey,
          title: 'Bulk App',
          theme: ThemeData(
              // scaffoldBackgroundColor: ColorsManager.darkBackGround,
              ),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.loginScreen,
          onGenerateRoute: appRouter.generateRoute,
        ));
  }
}
