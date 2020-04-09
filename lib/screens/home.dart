import 'package:encrypt/algorithm/aes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Encrypted
  String encrypted = AesHelper.encrypt(
    'password',
    'Parth Aggarwal',
    mode: 'CFB',
  );

  // Decrypted
  String decrypted = AesHelper.decrypt(
    'password',
    'sPhQsHpXYFqPb7qdmTY7AEoHIr1w8kt+jUCTa0gvcAw=',
    mode: 'CFB',
  );

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
          ],
        ),
      ),
    );
  }
}
