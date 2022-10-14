import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  final Color backgroundColor;
  final String balance;
  final String cardNumber;
  final bool rupay;
  const SmallCard({
    Key? key,
    required this.backgroundColor,
    required this.balance,
    required this.cardNumber,
    required this.rupay,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: MediaQuery.of(context).size.height * 0.1,
      width: 145,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                (rupay)
                    ? 'images/rupay-logo.png'
                    : 'images/mastercard-logo.png',
                height: 35,
                width: 35,
              ),
            ),
          ),
          Expanded(
            child: Text(
              balance,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: Text(
              cardNumber,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
