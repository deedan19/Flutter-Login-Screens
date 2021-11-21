import 'package:flutter/material.dart';
import 'resources/text_styles.dart';

class ParallelLogin extends StatefulWidget {
  ParallelLogin({Key? key}) : super(key: key);
  @override
  _ParallelLoginState createState() => _ParallelLoginState();
}

class _ParallelLoginState extends State<ParallelLogin> {
  bool _changeColor = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('images/logo.png'),
              ),
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFF2D46B9),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome',
              style: styleForText(30, FontWeight.w700, Colors.black),
            ),
            SizedBox(
              height: 52,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Material(
                      shape: Border(
                          bottom: BorderSide(
                              color: _changeColor
                                  ? Color(0xFF2D46B9)
                                  : Colors.transparent,
                              width: 3.0)),
                      child: TextButton(
                        child: Text(
                          'Login',
                          style: styleForText(
                              14, FontWeight.w700, Color(0xFF2D46B9)),
                        ),
                        onPressed: () {
                          setState(() {
                            _changeColor = !_changeColor;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(onPressed: () {}, child: Text('Signup')),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 25,
                            offset: const Offset(0, 5)),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Email Address',
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 25,
                            offset: const Offset(0, 10)),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Password',
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 52,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF2D46B9),
                      ),
                      onPressed: () {},
                      child: Text(
                        'LOGIN',
                        style: styleForText(16, FontWeight.w500, Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style:
                                styleForText(12, FontWeight.w500, Colors.blue),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 25,
                        width: 75,
                        child: Image.asset('images/socials.png'),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
