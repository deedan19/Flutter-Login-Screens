import 'package:flutter/material.dart';
import 'resources/colours.dart';
import 'resources/text_styles.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 100,
                        width: 100,
                        child: Image(image: AssetImage('images/bank.png'),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Welcome to',
                        textAlign: TextAlign.left,
                        style: styleForText(25, FontWeight.w700, Colors.black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Goliath National Bank',
                        textAlign: TextAlign.left,
                        style: styleForText(25, FontWeight.w700, Colors.black),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail_outline_outlined),
                  labelText: 'Email Address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.zero,
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    prefixIcon: Icon(Icons.lock_outline),
                    labelText: 'Password'),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                      color: loginColour, fontWeight: FontWeight.w700),
                ),
                width: double.infinity,
                alignment: Alignment.centerLeft,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: loginColour,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text('First time user?'),
              TextButton(
                onPressed: null,
                child: Text(
                  'Sign Up Here',
                  style: TextStyle(
                    color: loginColour,
                    fontWeight: FontWeight.w800,
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
