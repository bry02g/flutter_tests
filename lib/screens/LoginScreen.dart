import 'package:flutter/material.dart';
import 'package:tests_hw/screens/ConversionScreen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userNameTextEditingController = TextEditingController();

  TextEditingController passwordTextEditingController = TextEditingController();

  bool isUserNameEmpty = true;
  bool isPassWordEmtpy = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            title: Text('Time Formater'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Text(
                  'Login',
                  key: Key('login-header'),
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                      key: Key('username-textfield'),
                      controller: userNameTextEditingController,
                      decoration: InputDecoration(
                        hintText: 'User Name',
                      ),
                      onChanged: (input) {
                        setState(() {
                          isUserNameEmpty = input.isEmpty;
                        });
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    key: Key('password-textfield'),
                    controller: passwordTextEditingController,
                    decoration: InputDecoration(
                      hintText: 'Password',
                    ),
                    onChanged: (input) {
                      setState(() {
                        isPassWordEmtpy = input.isEmpty;
                      });
                    },
                  ),
                ),
                Spacer(),
                RaisedButton(
                    key: Key('done-btn'),
                    child: Text('Done'),
                    color: Colors.lightBlue,
                    onPressed: isUserNameEmpty || isPassWordEmtpy
                        ? null
                        : () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ConversionScreen()),
                              );
                            });
                          }),
                Spacer(),
              ],
            ),
          )),
    );
  }
}
