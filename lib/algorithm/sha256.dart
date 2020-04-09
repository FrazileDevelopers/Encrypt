import "package:pointycastle/export.dart";
import 'covert_helper.dart';

class SHA256 {
  static String hmacSha256(String password) {
    final hmac =
        HMac(SHA256Digest(), 64) // for HMAC SHA-256, block length must be 64
          ..init(KeyParameter(createUint8ListFromString('p')));

    return hmac.process(createUint8ListFromString(password)).toString();
  }
}
