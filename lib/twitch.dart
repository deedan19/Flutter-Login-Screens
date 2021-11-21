import 'package:flutter/material.dart';


class TwitchLogin extends StatefulWidget {
  const TwitchLogin({ Key? key }) : super(key: key);

  @override
  _TwitchLoginState createState() => _TwitchLoginState();
}

class _TwitchLoginState extends State<TwitchLogin> {
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
                  Text('Welcome back!', 
                style:TextStyle(fontSize: 30, fontWeight: FontWeight.w600,), 
                textAlign: TextAlign.left ,),
                SizedBox(height: 10,),
                Text('Please login to your account',
                style: TextStyle(fontSize: 20), textAlign: TextAlign.left,
                ),
                      ],
                    ),
                  ],
                ),
               SizedBox(height: 40,),
                TextField(
                  decoration: InputDecoration (
                    labelText: 'Email Address'
                  ),
                ),
                SizedBox(height: 30,),
                TextField(
                   decoration: InputDecoration (
                     suffix: GestureDetector(
                       onTap: (){},
                       child: Text('Forgot?'),),
                     hintText: 'Password',
                    
                     suffixStyle: TextStyle(color: Colors.blue)
                  
                  ),
                ),
                SizedBox(height: 40,),
                SizedBox(
                  height: 52,
                  width: double.infinity,
                  child: ElevatedButton(
                     child: Text('LOGIN', style: TextStyle(fontSize: 16),),
                     style: ElevatedButton.styleFrom(
                       primary: Colors.purple,
                     ),
                      onPressed: (){}, 
                    ),
                ),
                SizedBox(height: 20,),
                Text('REGISTER NOW',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14), ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}