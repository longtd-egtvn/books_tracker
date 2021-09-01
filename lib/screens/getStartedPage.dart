import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'LoginPage.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: CircleAvatar(
            backgroundColor: HexColor('#f0f0f0'),
            child: Column(
              children: [
                Spacer(),
                Text(
                  'Books Tracker',
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  '"Read. Change. Yourself"',
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(height: 50),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: HexColor('#69639F'),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                  icon: Icon(Icons.login_sharp),
                  label: Text('Sign In to get started'),
                ),
                Spacer()
              ],
            )));
  }
}
