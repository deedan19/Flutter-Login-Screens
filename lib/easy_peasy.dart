import 'package:flutter/material.dart';
import 'resources/text_styles.dart';

class EasyPeasy extends StatefulWidget {
  EasyPeasy({Key? key}) : super(key: key);
  @override
  _EasyPeasyState createState() => _EasyPeasyState();
}

class _EasyPeasyState extends State<EasyPeasy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Get it done',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF46E03C),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Sign in or Create account',
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF46E03C), width: 1.0),
            borderRadius: BorderRadius.circular(25.0),
                  ),
                  suffix: Icon(Icons.clear),
                  hintText: 'Email Address', 
                  hintStyle: styleForText(14, FontWeight.w500, Colors.black45),
                   filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),

                  ),
                  ),
                  
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF46E03C), shape: StadiumBorder()),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'or',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
              ),
              SizedBox(height: 20,),
              SizedBox(height: 52, width: double.infinity,
              child: ElevatedButton(
                  child: Text(
                    'Continue with Facebook',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF537BD0), shape: StadiumBorder()),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
