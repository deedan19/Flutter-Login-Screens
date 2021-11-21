import 'package:flutter/material.dart';
import 'resources/text_styles.dart';
import 'resources/colours.dart';

void main() => runApp(Dee());

class Dee extends StatefulWidget {
  Dee({Key? key}) : super(key: key);
  @override
  _DeeState createState() => _DeeState();
}

class _DeeState extends State<Dee> {
  TextStyle _textStyle(double size, FontWeight fontWeight, Color colour) {
    return TextStyle(fontSize: size, fontWeight: fontWeight, color: colour);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deeBgColour,
      body: SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 35,
                ),
                Container(
                  width: 150,
                  height: 80,
                  child: Image.asset('images/grid.png'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Excited?!',
                            textAlign: TextAlign.left,
                            style:
                                styleForText(30, FontWeight.w700, Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'You should be!!',
                            textAlign: TextAlign.left,
                            style:
                                styleForText(25, FontWeight.w700, Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Sign in if you already have an account with us',
                        style: _textStyle(12, FontWeight.w500, Colors.white38),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 52,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white, shape: StadiumBorder()),
                      onPressed: () {},
                      child: Text(
                        'Sign In',
                        style: _textStyle(16, FontWeight.w700, Colors.black87),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Or Sign up if you are new!',
                        style: _textStyle(12, FontWeight.w500, Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 52,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white, shape: StadiumBorder()),
                      onPressed: () {},
                      child: Text(
                        'Sign Up',
                        style: _textStyle(16, FontWeight.w700, Colors.black87),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 150,
                  height: 80,
                  child: Image.asset('images/grid.png'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
