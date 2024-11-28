import 'package:bwabat/features/main_layout/ui/widgets/custom_ticket_status_screen.dart';
import 'package:bwabat/features/main_layout/ui/widgets/default_home_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final TicketType ticketType;
  const HomeScreen({super.key, this.ticketType = TicketType.success});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xFF081B33), child: _buildHomeWidget(ticketType));
  }

  Widget _buildHomeWidget(TicketType ticketType) {
    switch (ticketType) {
      case TicketType.success:
        return CustomTicketStatus(
          ticketType: ticketType,
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
