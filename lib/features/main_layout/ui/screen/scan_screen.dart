import 'package:bwabat/core/helpers/extensions.dart';
import 'package:bwabat/features/main_layout/data/models/ticket_model.dart';
import 'package:bwabat/features/main_layout/logic/scan_cubit.dart';
import 'package:bwabat/features/main_layout/ui/screen/home_screen.dart';
import 'package:bwabat/features/main_layout/ui/screen/main_layout.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> with WidgetsBindingObserver {
  late ScanCubit _scanCubit;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _scanCubit = context.read<ScanCubit>();
    // _scanCubit.startScanning();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _scanCubit.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    _scanCubit.startScanning();

    super.didChangeDependencies();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _scanCubit.handleAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ScanCubit, ScanState>(
      listener: (context, state) async {
        if (state is ScanOnlineLoadingState) {
          // if (!context.mounted) return;
          context.showBlockDialog();

          // if (!context.mounted) return;
          // Future.delayed(const Duration(seconds: 5)).then((_) {});
          // await PersistentNavBarNavigator.pushNewScreen(
          //   context,
          //   screen: const Scaffold(
          //     body: Center(child: CircularProgressIndicator()),
          //   ),
          //   withNavBar: true,
          //   pageTransitionAnimation: PageTransitionAnimation.scale,
          // );

          // Allow further navigation after completion
        }
        if (state is ScanNavigationState) {
          if (_scanCubit.isNavigating) {
            debugPrint("Navigating to next screen...");

            final Ticket? ticket = state.ticket;
            if (context.mounted) {
              context.pop();

              // Navigator.push(
              //   // context,
              //   // screen: HomeScreen(
              //   //   ticketType: ticket?.ticketNumber == null
              //   //       ? TicketType.error
              //   //       : TicketType.success,
              //   // ),
              //   // settings: RouteSettings(
              //   //   name: Routes.homeScreen,
              //   //   arguments: ticket,
              //   // ),
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => HomeScreen(
              //       ticketType: ticket?.ticketNumber == null
              //           ? TicketType.error
              //           : TicketType.success,
              //     ),
              //     // settings: RouteSettings(
              //     //   name: Routes.homeScreen,
              //     //   arguments: ticket,
              //     // ),
              //   ),
              //   (route) => false,
              // );

              await PersistentNavBarNavigator.pushNewScreenWithRouteSettings(
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
                _scanCubit.startScanning();
              });

              // settings: RouteSettings(
              //   name: Routes.homeScreen,
              //   arguments: ticket,
              // ),
              // MainLayoutScreen(
              //   ticketType: ticket?.ticketNumber == null
              //       ? TicketType.error
              //       : TicketType.success,
              //   ),
              //   withNavBar: true,
              //   pageTransitionAnimation: PageTransitionAnimation.scale,
              // ).then((value) {
              //   if (!context.mounted) return;
              //   _scanCubit.startScanning();
              // });

              // Allow further navigation after completion
              _scanCubit.completeNavigation();
            }
            // Navigate to the home screen
            // _scanCubit.completeNavigation();
          }
        } else if (state is ScanErrorState) {
          if (!context.mounted) return;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error.getAllErrorMessages())),
          );
        }
      },
      child: MobileScanner(
        controller: _scanCubit.controller,
        onDetect: (BarcodeCapture capture) {
          // _scanCubit.handleBarcode(capture);
        },
      ),
    );
  }
}
