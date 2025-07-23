import 'package:flutter/material.dart';
import 'package:confidease/styles/colors.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController _dateController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: tertiary,
      appBar: AppBar(backgroundColor: tertiary),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 400,
                height: 150,
                margin: EdgeInsets.only(bottom: 10),
                // padding: EdgeInsets.all(10),
                child: Image(image: AssetImage('images/logos/soundwave2.png')),
              ),

              Container(
                // margin: EdgeInsets.only(left: 50, right: 50),
                // padding: EdgeInsets.only(left: 20, right: 20),
                width: 300,
                child: Text(
                  "SIGN UP",
                  style: TextStyle(
                    fontFamily: 'Sora-VariableFont',
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              Container(
                // margin: EdgeInsets.only(left: 50, right: 50),
                width: 350,
                child: Text(
                  "Create your account",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 20),
                width: 300,
                child: Text(
                  "Email Address",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),

              Container(
                width: 300,
                height: 40,
                margin: EdgeInsets.only(top: 2),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: quartenary,
                    contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 5),
                width: 300,
                child: Text(
                  "First Name",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),

              Container(
                width: 300,
                height: 40,
                margin: EdgeInsets.only(top: 2),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: quartenary,
                    contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 5),
                width: 300,
                child: Text(
                  "Last Name",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),

              Container(
                width: 300,
                height: 40,
                margin: EdgeInsets.only(top: 2),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: quartenary,
                    contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 5),
                width: 300,
                child: Text(
                  "Birthday",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),

              SizedBox(
                height: 40,
                width: 300,
                child: TextField(
                  controller: _dateController,
                  readOnly: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 12.0,
                    ),
                    suffixIcon: Icon(Icons.calendar_today),
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      lastDate: DateTime(2100),
                    );

                    if (pickedDate != null) {
                      setState(() {
                        _dateController.text = "${pickedDate.toLocal()}".split(
                          ' ',
                        )[0];
                      });
                    }
                  },
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 5),
                width: 300,
                child: Text(
                  "Password",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),

              Container(
                width: 300,
                height: 40,
                margin: EdgeInsets.only(top: 2),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: quartenary,
                    contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 5),
                width: 300,
                child: Text(
                  "Confirm Passsword",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),

              Container(
                width: 300,
                height: 40,
                margin: EdgeInsets.only(top: 2),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: quartenary,
                    contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                  ),
                ),
              ),

              Container(
                width: 100,
                height: 50,
                margin: EdgeInsets.only(top: 25),
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
                    backgroundColor: secondary,
                  ),

                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: details,
                      // fontWeight: FontWeight.w400,
                      fontFamily: 'Sora',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
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
