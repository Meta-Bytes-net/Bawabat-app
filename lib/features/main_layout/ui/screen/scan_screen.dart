import 'package:bwabat/features/main_layout/data/models/ticket_model.dart';
import 'package:bwabat/features/main_layout/logic/scan_cubit.dart';
import 'package:bwabat/features/main_layout/ui/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../../../core/routing/routes.dart';

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
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _scanCubit.handleAppLifecycleState(state);
  }

  /// Handle scanned barcode
  // Future<void> _handleBarcodeOffline(BarcodeCapture barcodeCapture) async {
  //   if (!mounted || _isNavigating) return;

  //   final List<Barcode> barcodes = barcodeCapture.barcodes;
  //   if (barcodes.isNotEmpty) {
  //     final String? value = barcodes.first.rawValue;

  //     if (value != null) {
  //       debugPrint('Scanned Barcode: $value');
  //       setState(() {
  //         _isNavigating = true; // Prevent further scans
  //       });
  //       ConvertedKeys? convertedKeys =
  //           await SharedPrefHelper.retrieveConvertedKeysSecurely();
  //       String? decryptData = EncryptionManager.decryptData(
  //         value,
  //         convertedKeys ?? ConvertedKeys(encryprionkey: null, iv: null),
  //       );
  //       Ticket convertedStringToTicket =
  //           Ticket.fromJson(jsonDecode(decryptData ?? '{}'));
  //       if (mounted) {
  //         PersistentNavBarNavigator.pushNewScreenWithRouteSettings(
  //           context,
  //           settings: RouteSettings(
  //               name: Routes.homeScreen, arguments: convertedStringToTicket),
  //           screen: convertedStringToTicket.ticketNumber == null
  //               ? const HomeScreen(
  //                   ticketType: TicketType.error,
  //                 )
  //               : const HomeScreen(
  //                   ticketType: TicketType.success,
  //                 ),
  //           withNavBar: true,
  //           pageTransitionAnimation: PageTransitionAnimation.scale,
  //         ).then((_) {
  //           // Reset the navigation state when returning to this screen
  //           setState(() {
  //             _isNavigating = false;
  //           });
  //         });
  //       }

  //       unawaited(_subscription?.cancel()); // Stop listening for barcodes
  //       _subscription = null;
  //       unawaited(controller.stop()); // Stop the scanner during navigation
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ScanCubit, ScanState>(
      listener: (context, state) async {
        if (state is ScanNavigationState) {
          final Ticket ticket = state.ticket ?? Ticket();
          await PersistentNavBarNavigator.pushNewScreenWithRouteSettings(
            context,
            settings: RouteSettings(
              name: Routes.homeScreen,
              arguments: ticket,
            ),
            screen: HomeScreen(
              ticketType: ticket.ticketNumber == null
                  ? TicketType.error
                  : TicketType.success,
            ),
            withNavBar: true,
            pageTransitionAnimation: PageTransitionAnimation.scale,
          );

          // Allow further navigation after returning
          _scanCubit.completeNavigation();
        } else if (state is ScanErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error.getAllErrorMessages())),
          );
        }
      },
      child: MobileScanner(
        controller: _scanCubit.controller,
        onDetect: (BarcodeCapture capture) {
          // _handleBarcodeOffline(capture);
        },
      ),
    );
  }
}
