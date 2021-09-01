import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isCreateAccountClicked = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                color: HexColor('#B9C2D1'),
              )),
          Text(
            'Sign In',
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              SizedBox(
                width: 300,
                height: 300,
                child: Text(isCreateAccountClicked
                    ? 'Login Form'
                    : 'Create Account Form'),
              ),
              TextButton.icon(
                icon: Icon(Icons.portrait_rounded),
                style: TextButton.styleFrom(
                  primary: HexColor('#FD5B28'),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                label:
                    Text(isCreateAccountClicked ? 'Login' : 'Create Account'),
                onPressed: () {
                  setState(() {
                    if (!isCreateAccountClicked) {
                      isCreateAccountClicked = true;
                    } else {
                      isCreateAccountClicked = false;
                    }
                  });
                },
              ),
            ],
          ),
          Expanded(
              flex: 2,
              child: Container(
                color: HexColor('#B9C2D1'),
              ))
        ],
      ),
    ));
  }
}
