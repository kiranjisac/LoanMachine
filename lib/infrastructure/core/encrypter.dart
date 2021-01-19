import 'package:encrypt/encrypt.dart';
import 'package:loan_machine/domain/core/errors.dart';

String encrpyt(String input) {
  try {
    final key = Key.fromUtf8("KIRANJISSACKEVINEAPENASHIKSHAJII");
    final iv = IV.fromLength(16);
    final encryptor = Encrypter(AES(key));

    return encryptor.encrypt(input, iv: iv).base64;
  } catch (_) {
    throw UnexpectedError();
  }
}
