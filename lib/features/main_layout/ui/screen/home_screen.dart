import 'package:bwabat/features/main_layout/ui/widgets/custom_ticket_status_body.dart';
import 'package:bwabat/features/main_layout/ui/widgets/default_home_body.dart';
import 'package:bwabat/features/scan/data/models/ticket_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final TicketType? ticketType;

  final Ticket? ticket;
  const HomeScreen(
      {super.key, this.ticketType = TicketType.defaultHome, this.ticket});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Container(
          color: const Color(0xFF081B33),
          child: _buildHomeWidget(widget.ticketType ?? TicketType.defaultHome)),
    );
  }

  Widget _buildHomeWidget(TicketType ticketType) {
    switch (ticketType) {
      case TicketType.success:
        return CustomTicketStatus(
          ticketType: ticketType,
          ticket: widget.ticket,
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
