import 'package:bwabat/core/di/dependency_injection.dart';
import 'package:bwabat/features/main_layout/logic/cubit/home_cubit.dart';
import 'package:bwabat/features/main_layout/ui/widgets/custom_ticket_status_body.dart';
import 'package:bwabat/features/main_layout/ui/widgets/default_home_body.dart';
import 'package:bwabat/features/main_layout/ui/widgets/home_bloc_listener.dart';
import 'package:bwabat/features/scan/data/models/ticket_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  final TicketType? ticketType;

  final Ticket? ticket;
  const HomeScreen(
      {super.key, this.ticketType = TicketType.defaultHome, this.ticket});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<HomeCubit>(),
        child: HomeBlocListener(
          child: Scaffold(
            body: PopScope(
              canPop: false,
              child: Container(
                  height: double.infinity,
                  color: const Color(0xFF081B33),
                  child:
                      _buildHomeWidget(ticketType ?? TicketType.defaultHome)),
            ),
          ),
        ));
  }

  Widget _buildHomeWidget(TicketType ticketType) {
    switch (ticketType) {
      case TicketType.success:
        return CustomTicketStatus(
          ticketType: ticketType,
          ticket: ticket,
        ); // Replace with the desired widget
      case TicketType.error:
        return CustomTicketStatus(
            ticketType: ticketType); // Replace with the desired widget
      case TicketType.defaultHome:
        return const DefaultHome(); // Replace with your DefaultHome widget
    }
  }
}

enum TicketType { success, error, defaultHome }
