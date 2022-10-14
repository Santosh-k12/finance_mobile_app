import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {
  const BigCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle fontStyle =
        TextStyle(fontWeight: FontWeight.w600, color: Colors.white);
    return Container(
      padding: const EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height * 0.26,
      width: MediaQuery.of(context).size.width * 0.41,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 155, 52),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Insta Platinum', style: fontStyle),
          const Expanded(
              child: SizedBox(
            height: 10,
          )),
          //visa png
          Image.asset(
            'images/visa-logo.png',
            height: 35,
            width: 35,
          ),
          const Text('\$ 5400.84', style: fontStyle),
          const Text(
            '****  ****  ****  1234',
            style: const TextStyle(fontSize: 12, color: Colors.white),
          )
        ],
      ),
    );
  }
}
