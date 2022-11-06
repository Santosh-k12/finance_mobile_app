// ignore_for_file: prefer_const_constructors

import 'package:finance_mobile_app/Provider/login_provider.dart';
import 'package:finance_mobile_app/screens/home_screen.dart';
import 'package:finance_mobile_app/screens/report_screen.dart';
import 'package:finance_mobile_app/screens/sign_up_screen.dart';
import 'package:finance_mobile_app/widgets/sign_in_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IntroScreen extends StatefulWidget {
  static String routeName = 'IntroScreen';

  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
// Future<UserCredential> signInWithGoogle() async {
//   // Trigger the authentication flow
//   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

//   // Obtain the auth details from the request
//   final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

//   // Create a new credential
//   final credential = GoogleAuthProvider.credential(
//     accessToken: googleAuth?.accessToken,
//     idToken: googleAuth?.idToken,
//   );

//   // Once signed in, return the UserCredential
//   return await FirebaseAuth.instance.signInWithCredential(credential);
// }

  GoogleSignInAccount? _currentUser;
  String _contactText = '';

  GoogleSignIn _googleSignIn = GoogleSignIn(
    // Optional clientId
    // clientId: '479882132969-9i9aqik3jfjd7qhci1nqf0bm2g71rm1u.apps.googleusercontent.com',
    scopes: <String>[
      'email',
    ],
  );

  void initState() {
    super.initState();
    _googleSignIn.signOut();

    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
      setState(() {
        _currentUser = account;
        if (account != null) {
          Provider.of<LoginProvider>(context, listen: false)
              .setProfile(account.photoUrl!, account.displayName!);
        }
        Navigator.pushReplacementNamed(context, ReportScreen.routeName);
        print(account);
      });
      if (_currentUser != null) {
        print('current user is not equal to null');
        print(account);
        if (account != null) {
          Provider.of<LoginProvider>(context, listen: false)
              .setProfile(account.photoUrl!, account.displayName!);
        }
        Navigator.pushReplacementNamed(context, ReportScreen.routeName);
      }
    });
    _googleSignIn.signInSilently();
  }

  Future<void> _handleSignIn() async {
    print('signing in');
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }

  Future<void> _handleSignOut() => _googleSignIn.disconnect();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Welcome',
              style: TextStyle(fontSize: 30, fontFamily: 'NunitoSans'),
            ),
            SizedBox(height: 10),
            Text(
              'Easiest Way Manage your Money',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Text(
              'Finanace is a gun, Politics is knowing when to pull the Trigger',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            SignInButton(
                label: 'SIGN IN WITH GOOGLE',
                signInButton: true,
                onPressed: () => _handleSignIn()),
            SizedBox(height: 25),
            SignInButton(
              onPressed: () {
                Navigator.pushNamed(context, SignUpScreen.routeName);
              },
              label: 'CREATE AN ACCOUNT',
              signInButton: false,
            ),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
