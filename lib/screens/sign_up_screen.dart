// ignore_for_file: prefer_const_constructors

import 'package:finance_mobile_app/screens/home_screen.dart';
import 'package:finance_mobile_app/screens/intro_screen.dart';
import 'package:finance_mobile_app/widgets/sign_in_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  static String routeName = 'SignUpScreen';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    InputDecoration formFielDecoration = const InputDecoration(
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
      ),
    );
    TextStyle labelStyle = TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 12,
        color: Color.fromARGB(255, 140, 140, 140));
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 100),
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 246, 248, 252),
          child: Column(
            children: [
              Row(children: const [
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                )
              ]),
              const SizedBox(height: 12),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Text('HELLO',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                  ),
                  SizedBox(width: 5),
                  Text('BEAUTIFUL.!',
                      style: TextStyle(
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w800,
                          fontSize: 16)),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: const [
                  SizedBox(width: 12),
                  Flexible(
                    child: Text(
                        'Enter your information below or login with Create an account',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                            fontSize: 12)),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('User Name*', style: labelStyle),
                    TextFormField(
                      decoration: formFielDecoration,
                    ),
                    const SizedBox(height: 20),
                    Text('Email ID*', style: labelStyle),
                    TextFormField(
                      decoration: formFielDecoration,
                    ),
                    const SizedBox(height: 20),
                    Text('Password*', style: labelStyle),
                    TextFormField(
                      decoration: formFielDecoration,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Colors.black),
                      children: const <TextSpan>[
                        TextSpan(text: 'I agree to the'),
                        TextSpan(
                            text: 'Terms & conditions, Privacy Policy ',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 155, 52))),
                        TextSpan(text: 'and '),
                        TextSpan(
                            text: 'Fees',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 155, 52))),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              SignInButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, HomeScreen.routeName);
                  },
                  label: 'SIGN IN',
                  signInButton: true),
              const SizedBox(height: 12),
              const Text('Or you can Join with',
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w700,
                  )),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                        color: Colors.blue[800], shape: BoxShape.circle),
                  ),
                  SizedBox(width: 25),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, IntroScreen.routeName);
                    },
                    child: Container(
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                    ),
                  ),
                  SizedBox(width: 25),
                  Container(
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Colors.black),
                  children: const <TextSpan>[
                    TextSpan(text: 'already have an Account? Click here '),
                    TextSpan(
                        text: 'Login ',
                        style: TextStyle(decoration: TextDecoration.underline)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
