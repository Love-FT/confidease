import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xff7E81D4),
      appBar: AppBar(backgroundColor: Color(0xff7E81D4)),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 400,
                height: 150,
                margin: EdgeInsets.only(top: 40, bottom: 10),
                // padding: EdgeInsets.all(10),
                child: Image(image: AssetImage('images/logos/soundwave1.png')),
              ),

              Container(
                margin: EdgeInsets.only(left: 50, right: 50),
                // padding: EdgeInsets.only(left: 20, right: 20),
                // color: Colors.white,
                width: 350,
                child: Text(
                  "WELCOME BACK",
                  style: TextStyle(
                    fontFamily: 'Sora-VariableFont',
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 50, right: 50),
                width: 350,
                child: Text(
                  "Login to your account",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 50),
                width: 300,
                child: Text(
                  "Email Address",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),

              Container(
                width: 300,
                height: 40,
                margin: EdgeInsets.only(top: 5),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Color(0xffF4F4F4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10),
                width: 300,
                child: Text(
                  "Password",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),

              Container(
                width: 300,
                height: 40,
                margin: EdgeInsets.only(top: 5, bottom: 25),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Color(0xffF4F4F4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                  ),
                ),
              ),

              Container(
                width: 100,
                height: 50,
                margin: EdgeInsets.only(bottom: 25),
                child: OutlinedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Login()),
                    // );
                  },
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    side: BorderSide(color: Colors.black, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: Color(0xff4D4299),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Sora',
                      // fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
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
