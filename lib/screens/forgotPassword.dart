// ignore_for_file: prefer_const_constructors
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firebase_auth/firebase_auth.dart';

class forgotPass extends StatefulWidget {
  const forgotPass({super.key});

  @override
  State<forgotPass> createState() => _forgotPassState();
}

class _forgotPassState extends State<forgotPass> {
  bool invisible = true;
  void togglePass() {
    setState(() {
      invisible = !invisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 249, 249),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SvgPicture.asset("assets/secure.svg", height: 320, width: 600),
          Padding(
              padding: EdgeInsets.only(left: 17, bottom: 20),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Forgot \nPassword?",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ))),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 25, left: 20, right: 20),
            child: Text(
              "Don't worry! It happens. Please enter the address associated with your account",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 117, 123, 132)),
            ),
          ),
          Padding(
              padding:
                  EdgeInsets.only(left: 17, bottom: 20, top: 10, right: 17),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.alternate_email),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 195, 194, 194))),
                    border: InputBorder.none,
                    hintText: 'Email ID / Mobile number'),
                style: TextStyle(
                    fontSize: 17, color: Color.fromARGB(255, 0, 0, 0)),
              )),
          Container(
              padding: EdgeInsets.only(top: 30, bottom: 10),
              child: TextButton(
                // ignore: sort_child_properties_last
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size(350, 50),
                    backgroundColor: Color.fromRGBO(1, 101, 255, 1),
                    alignment: Alignment.center),
                onPressed: () {},
              )),
        ],
      )),
    );
  }
}