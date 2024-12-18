import 'package:bwabat/features/scan/data/models/ticket_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/foundation.dart';

class HiveService {
  static const String _ticketsBoxName = 'tickets_box';
  static Box<Ticket>? _ticketsBox;

  static Future<void> init() async {
    await Hive.initFlutter();
    
    // Register adapters
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(TicketAdapter());
    }

    // Open boxes
    _ticketsBox = await Hive.openBox<Ticket>(_ticketsBoxName);
  }

  // Add a ticket to the box
  static Future<void> addTicket(Ticket ticket) async {
    try {
      await _ticketsBox?.add(ticket);
    } catch (e) {
      if (kDebugMode) {
        print('Error adding ticket to Hive: $e');
      }
      rethrow;
    }
  }

  // Get all tickets from the box
  static List<Ticket> getAllTickets() {
    try {
      return _ticketsBox?.values.toList() ?? [];
    } catch (e) {
      if (kDebugMode) {
        print('Error getting tickets from Hive: $e');
      }
      return [];
    }
  }

  // Clear all tickets from the box
  static Future<void> clearAllTickets() async {
    try {
      await _ticketsBox?.clear();
    } catch (e) {
      if (kDebugMode) {
        print('Error clearing tickets from Hive: $e');
      }
      rethrow;
    }
  }

  // Check if there are any tickets in the box
  static bool hasTickets() {
    return _ticketsBox?.isNotEmpty ?? false;
  }

  // Close all boxes
  static Future<void> closeBoxes() async {
    await _ticketsBox?.close();
  }
}
