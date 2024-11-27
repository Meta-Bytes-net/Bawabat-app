import 'package:bwabat/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        right: 30,
        left: 30,
        top: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          LoginBlocListener(),
        ],
      ),
    );
  }
}
