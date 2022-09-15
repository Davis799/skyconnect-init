// ignore_for_file: prefer_const_constructors
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firebase_auth/firebase_auth.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
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
          SvgPicture.asset("assets/office.svg", height: 300, width: 600),
          Padding(
              padding: EdgeInsets.only(left: 17, bottom: 20),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Login",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ))),
          Padding(
              padding: EdgeInsets.only(left: 17, bottom: 10, right: 17),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.alternate_email),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 195, 194, 194))),
                    border: InputBorder.none,
                    hintText: 'Enter Your Email'),
                style: TextStyle(
                    fontSize: 17, color: Color.fromARGB(255, 0, 0, 0)),
              )),
          Padding(
              padding: EdgeInsets.only(left: 17, right: 17, bottom: 10),
              child: TextFormField(
                obscureText: invisible,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_rounded),
                  suffixIcon: GestureDetector(
                      onTap: togglePass,
                      child: Icon(
                        invisible
                            ? Icons.visibility_off
                            : Icons.visibility_sharp,
                      )),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 195, 194, 194))),
                  border: InputBorder.none,
                  hintText: 'Password',
                ),
                style: TextStyle(
                    fontSize: 17, color: Color.fromARGB(255, 0, 0, 0)),
              )),
          Padding(
              padding: EdgeInsets.only(right: 17, top: 5, bottom: 20),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                      onTap: () =>
                          {Navigator.pushNamed(context, "/forgetPass")},
                      child: Text(
                        "Forgot Password?",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromRGBO(1, 101, 255, 1)),
                      )))),
          TextButton(
            // ignore: sort_child_properties_last
            child: Text(
              'Login',
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
          ),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "OR",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Color.fromARGB(255, 135, 135, 135)),
              )),
          Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextButton(
                // ignore: sort_child_properties_last
                child: Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/google.svg",
                        width: 25,
                        height: 25,
                      ),
                      Text(
                        '  Login with Google',
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Color.fromARGB(255, 97, 97, 97),
                        ),
                      ),
                    ]),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.all(13),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size(350, 50),
                    backgroundColor: Color.fromARGB(255, 222, 222, 222),
                    alignment: Alignment.center),
                onPressed: () {},
              )),
          Padding(
              padding: EdgeInsets.only(top: 30, bottom: 10),
              child: Align(
                  alignment: Alignment.center,
                  child: Text.rich(TextSpan(style: TextStyle(),
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        TextSpan(
                            text: "New to SkyConnect?",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 117, 123, 132))),
                        TextSpan(
                            text: "  Register",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, '/signup');
                              },
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(1, 101, 255, 1)))
                      ])))),
        ],
      )),
    );
  }
}