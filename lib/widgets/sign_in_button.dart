import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final String label;
  final bool signInButton;
  final void Function()? onPressed;
  const SignInButton({
    Key? key,
    required this.label,
    required this.signInButton,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 50),
            backgroundColor: (signInButton)
                ? const Color.fromARGB(255, 0, 0, 132)
                : const Color.fromARGB(255, 255, 155, 52),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(300)),
            )),
        child: Text(
          label,
          style: TextStyle(
              color: (signInButton) ? Colors.white : Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18),
        ));
  }
}
