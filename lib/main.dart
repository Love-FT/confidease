import 'package:flutter/material.dart';
//material.io/components
//material.io/color
//appicon.co

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Center(
        //     child: Text("Love, Ais", style: TextStyle(color: Colors.white)),
        //   ),
        //   backgroundColor: Colors.pink[300],
        // ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(
              width: 400,
              height: 400,
              margin: EdgeInsets.only(top: 120),

              child: Image(image: AssetImage('images/chosen1.png')),
            ),

            Container(
              width: 300,
              height: 50,
              margin: EdgeInsets.only(bottom: 25),
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
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
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.black, width: 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: Color(0xffF7C020),
                ),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Color(0xff4D4299),
                    // fontWeight: FontWeight.w400,
                    fontFamily: 'Sora',
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xff7E81D4),
      ),
    );
  }
}
