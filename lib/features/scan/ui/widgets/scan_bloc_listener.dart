import 'package:bwabat/core/helpers/extensions.dart';
import 'package:bwabat/features/main_layout/ui/screen/main_layout.dart';
import 'package:bwabat/features/scan/data/models/ticket_model.dart';
import 'package:bwabat/features/scan/logic/scan_cubit.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../../main_layout/ui/screen/home_screen.dart';

class ScanBlocListener extends StatelessWidget {
  final Widget child;
  const ScanBlocListener({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<ScanCubit, ScanState>(
      listener: (context, state) {
        {
          final scanCubit = context.read<ScanCubit>();
          if (state is ScanOnlineLoadingState) {
            context.showBlockDialog();
            // Allow further navigation after completion
          }
          if (state is ScanNavigationState) {
            if (scanCubit.isNavigating) {
              debugPrint("Navigating to next screen...");

              final Ticket? ticket = state.ticket;
              if (context.mounted) {
                context.pop();
                PersistentNavBarNavigator.pushNewScreenWithRouteSettings(
                  screen: MainLayoutScreen(
                    ticketType: ticket?.ticketNumber == null
                        ? TicketType.error
                        : TicketType.success,
                  ),
                  context,
                  settings: RouteSettings(
                    arguments: ticket,
                  ),
                ).then((value) {
                  if (!context.mounted) return;
                  scanCubit.startScanning();
                });

                scanCubit.completeNavigation();
              }
            }
          } else if (state is ScanErrorState) {
            if (!context.mounted) return;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error.getAllErrorMessages())),
            );
          }
        }
      },
      child: child,
    );
  }
}
