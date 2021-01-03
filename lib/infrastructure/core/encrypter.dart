import 'package:encrypt/encrypt.dart';

String encrpyt(String input) {
  final key =
      Key.fromUtf8("CulitvationOfmindShouldbeTheUltimateAimOfHumanExistence");
  final iv = IV.fromLength(16);
  final encryptor = Encrypter(AES(key));

  return encryptor.encrypt(input, iv: iv).base64;
}
