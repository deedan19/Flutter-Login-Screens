import 'package:flutter/material.dart';
import 'resources/text_styles.dart';

class WhenLogIs extends StatefulWidget {
  WhenLogIs({Key? key}) : super(key: key);
  @override
  _WhenLogState createState() => _WhenLogState();
}

class _WhenLogState extends State<WhenLogIs> {
  Container _bottomCircle(Color colour) {
    return Container(
      height: 8,
      width: 8,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(4), color: colour),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.all(35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 10,
                width: 100,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Image(image: AssetImage('images/fit.png')),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(
                          height: 20,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Login or create an account to keep your subscription in sync',
                          textAlign: TextAlign.center,
                          style:
                              styleForText(12, FontWeight.w500, Colors.white60),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 44,
                        width: double.infinity,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 2, color: Colors.white38),
                            backgroundColor: Colors.white12,
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: Text('Login with Facebook'),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 44,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    primary: Colors.white12),
                                onPressed: () {},
                                child: Text('Sign Up'),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 44,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10),),
                                    primary: Colors.white12),
                                onPressed: () {},
                                child: Text('Log In'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 44,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white12,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Text('Later'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _bottomCircle(Colors.white38),
                      SizedBox(
                        width: 8,
                      ),
                      _bottomCircle(Colors.white38),
                      SizedBox(
                        width: 8,
                      ),
                      _bottomCircle(Colors.white38),
                      SizedBox(
                        width: 8,
                      ),
                      _bottomCircle(Colors.white38),
                      SizedBox(
                        width: 8,
                      ),
                      _bottomCircle(Colors.white),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
