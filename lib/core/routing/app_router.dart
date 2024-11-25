import 'package:bwabat/core/di/dependency_injection.dart';
import 'package:bwabat/core/routing/routes.dart';
import 'package:bwabat/features/login/logic/login_cubit/login_cubit.dart';
import 'package:bwabat/features/login/ui/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );

      case Routes.homeScreen:
        return PageRouteBuilder(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.0, 1.0);
            const end = Offset.zero;
            const curve = Curves.elasticIn;

            var tween = Tween(begin: begin, end: end).chain(
                CurveTween(curve: const Interval(0.1, 1.0, curve: curve)));

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
          pageBuilder: (context, animation, secondaryAnimation) =>
              const Scaffold(),
        );

      default:
        return null;
    }
  }
}