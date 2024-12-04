import 'package:bwabat/features/login/data/models/converted_keys.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:flutter/foundation.dart';

class EncryptionManager {
  // Hexadecimal AES key (256-bit) come from APi one time when login
  // static String? keyHex;
  static late final encrypt.Key encryprionKey;

  // Hexadecimal IV (16 bytes)
  // static String? ivHex;
  static late final encrypt.IV iv;

  // static convertKeys({String? keyHex, String? ivHex}) {
  //   // Validate inputs
  //   if (keyHex == null || keyHex.isEmpty) {
  //     throw const FormatException("keyHex cannot be null or empty");
  //   }
  //   if (ivHex == null || ivHex.isEmpty) {
  //     throw const FormatException("ivHex cannot be null or empty");
  //   }

  //   final hexRegex = RegExp(r'^[0-9A-Fa-f]+$');
  //   if (!hexRegex.hasMatch(keyHex)) {
  //     throw const FormatException("Invalid hexadecimal format for keyHex");
  //   }
  //   if (!hexRegex.hasMatch(ivHex)) {
  //     throw const FormatException("Invalid hexadecimal format for ivHex");
  //   }
  //   if (ivHex.length % 2 != 0) {
  //     throw const FormatException(
  //         "ivHex must have an even number of characters");
  //   }

  //   // Parse key and IV
  //   final encryprionKey = encrypt.Key.fromBase16(keyHex); // 256-bit key
  //   final iv = encrypt.IV(
  //     Uint8List.fromList(
  //       List<int>.generate(ivHex.length ~/ 2, (index) {
  //         return int.parse(ivHex.substring(index * 2, index * 2 + 2),
  //             radix: 16);
  //       }),
  //     ),
  //   ); // 16-byte IV

  //   return ConvertedKeys(encryprionkey: encryprionKey, iv: iv);
  // }

  static String? decryptData(String encryptedData, ConvertedKeys keys) {
    try {
      final encryptionKey =
          encrypt.Key.fromUtf8(keys.encryprionkey!); // 32 bytes for AES-256
      final encryptioniv =
          encrypt.IV.fromUtf8(keys.iv!); // 16 bytes for AES-CBC
      final encrypter = encrypt.Encrypter(
          encrypt.AES(encryptionKey, mode: encrypt.AESMode.cbc));
      final decrypted = encrypter.decrypt64(encryptedData, iv: encryptioniv);
      return decrypted; // Directly set decrypted value
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return null;
  }
}
