import 'package:flutter/material.dart';
import 'resources/text_styles.dart';

class RememberUber extends StatefulWidget {
  RememberUber({Key? key}) : super(key: key);
  @override
  _RememberUberState createState() => _RememberUberState();
}

class _RememberUberState extends State<RememberUber> {
  final Color _buttonColour = Color(0xFF1D1A2F);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Row(
        children: [],
      ),
      body: SafeArea(
        bottom: false,
        top: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/uberbg.png'),
                  ),
                ),
                child: Container(
                  height: 100,
                  width: 100,
                  child: Image.asset('images/uber.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(38, 38, 38, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Login',
                          style:
                              styleForText(30, FontWeight.w800, Colors.black87),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                            'Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur',
                            style: TextStyle()),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Username',
                            hintStyle: TextStyle(color: Colors.black38),
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.black38),
                              prefixIcon: Icon(Icons.lock_outline)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot password?',
                                style: styleForText(
                                    12, FontWeight.w800, Colors.black54),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 62,
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don\'t have an account?',
                                style: styleForText(
                                    12, FontWeight.w600, Colors.black45),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('SIGN UP',
                                  style: styleForText(
                                      16, FontWeight.w700, Colors.black87)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: SizedBox(
                    height: 72,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: _buttonColour),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'SIGN IN',
                            style:
                                styleForText(16, FontWeight.w700, Colors.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 17,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
