import 'package:bloc/bloc.dart';
import 'package:bwabat/core/bloc_observer.dart';
import 'package:bwabat/core/bwabat_app.dart';
import 'package:bwabat/core/di/dependency_injection.dart';
import 'package:bwabat/core/helpers/extensions.dart';
import 'package:bwabat/core/helpers/shared_pref_helper.dart';
import 'package:bwabat/core/routing/app_router.dart';
import 'package:flutter/material.dart';

import 'core/helpers/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await checkIfLoggedInUser();

  await setupGetIt();

  Bloc.observer = AliveBlocObserver();

  runApp(BwabatApp(
    appRouter: AppRouter(),
  ));
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken!.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
