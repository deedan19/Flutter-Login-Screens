import 'package:flutter/material.dart';
import 'resources/text_styles.dart';

class SomethingFunky extends StatefulWidget {
  SomethingFunky({Key? key}) : super(key: key);
  @override
  _SomethingFunkyState createState() => _SomethingFunkyState();
}

class _SomethingFunkyState extends State<SomethingFunky> {
  final Color buttonColour = Color(0xff00818A);
  final Color bgColour = Color(0xFF293462);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColour,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Log in',
                style: styleForText(30.0, FontWeight.w800, Colors.white),
              ),
              SizedBox(
                height: 60,
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Email Address',
                  contentPadding: EdgeInsets.all(20),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Password', 
                  contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
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
                    primary: buttonColour,
                    shape: StadiumBorder()
                  ),
                  child: Text('LOGIN'),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Forgot password?',
                style: styleForText(12.0, FontWeight.w200, Colors.grey),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Register Here',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
