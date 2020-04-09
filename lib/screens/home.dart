import 'package:encrypt/algorithm/aes.dart';
import 'package:encrypt/algorithm/sha256.dart';
import 'package:flutter/material.dart';
import 'package:pointycastle/export.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // AES Encrypted
  String encrypted = AesHelper.encrypt(
    'password',
    'Parth Aggarwal',
    mode: 'CFB',
  );

  // AES Decrypted
  String decrypted = AesHelper.decrypt(
    'password',
    'sPhQsHpXYFqPb7qdmTY7AEoHIr1w8kt+jUCTa0gvcAw=',
    mode: 'CFB',
  );

  // SHA256 Encrypted
  String sha256 = SHA256.hmacSha256('Parth Aggarwal').toString();

  @override
  void initState() {
    // print(encrypted);
    // print(decrypted);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Encryption',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Password',
              style: TextStyle(
                color: Colors.pinkAccent,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Encrypted => ' + encrypted,
              style: TextStyle(
                color: Colors.pinkAccent,
                fontSize: 20.0,
              ),
            ),
            Text(
              'Decrypted => ' + decrypted,
              style: TextStyle(
                color: Colors.pinkAccent,
                fontSize: 20.0,
              ),
            ),
            Text(
              'SHA256 => ' + sha256,
              style: TextStyle(
                color: Colors.pinkAccent,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
