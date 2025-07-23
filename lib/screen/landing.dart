import 'package:confidease/screen/login.dart';
import 'package:confidease/screen/signup.dart';
import 'package:flutter/material.dart';
import 'package:confidease/styles/colors.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Container(
            width: 300,
            height: 300,
            margin: EdgeInsets.only(right: 50, left: 50, bottom: 50, top: 120),

            child: Image(image: AssetImage('images/logos/chosen1.png')),
          ),

          Container(
            width: 300,
            height: 50,
            margin: EdgeInsets.only(bottom: 25),
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.black, width: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                backgroundColor: details,
              ),
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Sora',
                  // fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ),
          ),

          Container(
            width: 300,
            height: 50,
            margin: EdgeInsets.only(bottom: 25),
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup()),
                );
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.black, width: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                backgroundColor: secondary,
              ),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: details,
                  // fontWeight: FontWeight.w400,
                  fontFamily: 'Sora',
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: primary,
    );
  }
}
