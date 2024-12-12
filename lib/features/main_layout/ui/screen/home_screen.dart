import 'package:bwabat/features/main_layout/data/models/ticket_model.dart';
import 'package:bwabat/features/main_layout/ui/widgets/custom_ticket_status_screen.dart';
import 'package:bwabat/features/main_layout/ui/widgets/default_home_screen.dart';
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
  // Ticket? ticket;
  // @override
  // void didChangeDependencies() {
  //   if (widget.ticketType == TicketType.success) {
  //     ticket = ModalRoute.of(context)!.settings.arguments as Ticket;
  //   }
  //   super.didChangeDependencies();
  // }

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
