import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:flutter/foundation.dart';

class EncryptionManager {
  static String encryptedData = "McmF6o03pfNouPFlOYvXQw==";
  static String decryptedData = "Decryption will appear here.";

  // Hexadecimal AES key (256-bit) come from APi one time when login
  String? keyHex;
  late final encrypt.Key encryprionKey;

  // Hexadecimal IV (16 bytes)
  String? ivHex;
  late final encrypt.IV iv;
  convertKeys() {
    encryprionKey = encrypt.Key.fromBase16(keyHex!); // 256-bit key
    iv = encrypt.IV(Uint8List.fromList(
      List<int>.generate(ivHex!.length ~/ 2, (index) {
        return int.parse(ivHex!.substring(index * 2, index * 2 + 2), radix: 16);
      }),
    )); // 16-byte IV
  }

  static String? decryptData(
      encrypt.Key encryprionKey, String? keyHex, encrypt.IV? iv) {
    try {
      final encrypter = encrypt.Encrypter(
          encrypt.AES(encryprionKey, mode: encrypt.AESMode.cbc));
      final decrypted = encrypter.decrypt64(encryptedData, iv: iv);

      decryptedData = decrypted;
      return decrypted; // Directly set decrypted value
    } catch (e) {
      decryptedData = "Error: $e";
      if (kDebugMode) {
        print(decryptedData);
      }
    }
    return null;
  }
}
