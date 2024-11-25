import 'package:flutter/material.dart';

void logDebug(String message) {
  final stackTrace = StackTrace.current.toString().split('\n')[1];

  // ANSI escape codes for colors: \x1B[<code>m
  const String green = '\x1B[32m'; // Green for debug message
  const String reset = '\x1B[0m'; // Reset color

  final logMessage = '$green[DEBUG] $message \n -> $stackTrace$reset';

  debugPrint(logMessage);
}
