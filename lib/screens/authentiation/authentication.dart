import 'package:flutter/material.dart';

import 'package:flutter_firebase_crypto_wallet/net/flutterfire.dart';

class Authentication extends StatefulWidget {
  Authentication({Key key}) : super(key: key);

  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crypto Wallet!'),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(16, 24, 16, 0),
                padding: EdgeInsets.all(16),
                child: TextFormField(
                  controller: _emailField,
                  decoration: InputDecoration(
                    hintText: 'email@email.com',
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    labelText: 'Email:',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(16, 24, 16, 0),
                padding: EdgeInsets.all(16),
                child: TextFormField(
                  controller: _passwordField,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'password',
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    labelText: 'Password:',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.4,
                margin: EdgeInsets.only(top: 24),
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blueAccent,
                ),
                child: ElevatedButton(
                  child: Text('singin'),
                  onPressed: () async {
                    bool shouldNavigate =
                        await signin(_emailField.text, _passwordField.text);
                    if (shouldNavigate) {
                      // Navigate
                    }
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.4,
                margin: EdgeInsets.only(top: 24),
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blueAccent,
                ),
                child: ElevatedButton(
                  child: Text('signup'),
                  onPressed: () async {
                    bool shouldNavigate =
                        await signup(_emailField.text, _passwordField.text);
                    if (shouldNavigate) {
                      // Navigate
                    }
                  },
                ),
              ),
            ],
          )),
    );
  }
}
