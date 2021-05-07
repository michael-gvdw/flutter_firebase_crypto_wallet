import 'package:flutter/material.dart';
import 'package:flutter_firebase_crypto_wallet/screens/authentiation/authentication.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Wallet!',
      home: Authentication(),
    );
  }
}
