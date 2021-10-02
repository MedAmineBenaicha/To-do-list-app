import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/screens/task_screen.dart';

import '../UI/sign_button.dart';
import '../provider/data_provider.dart';

class WelcomeScreen extends StatelessWidget {
  static String route_name = '/';
  late String username;
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late String userName;

    return Scaffold(
      body: Container(
        color: Color(0xFF031956),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              child: Text(
                'ENTER YOUR USERNAME',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF8BA7EE),
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
              margin: EdgeInsets.fromLTRB(30.0, 40.0, 40.0, 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 2.0, color: Color(0xCBC7C7B3)),
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: TextFormField(
                onChanged: (value) {
                  username = value;
                },
                obscureText: false,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.account_circle,
                    color: Color(0xFF031956),
                  ),
                  border: InputBorder.none,
                  hintText: 'username',
                ),
              ),
            ),
            SizedBox(height: 10.0),
            SignButton(
              bgColor: Color(0xFF8E13BA),
              textButton: 'Let\'s Start',
              onPress: () {
                Provider.of<Data>(context, listen: false).setName(username);
                Navigator.pushNamed(context, TaskScreen.routeName);
              },
            )
          ],
        ),
      ),
    );
  }
}
