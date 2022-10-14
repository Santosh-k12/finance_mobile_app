// ignore_for_file: prefer_const_constructors

import 'package:finance_mobile_app/widgets/transaction_icon.dart';
import 'package:flutter/material.dart';

class MonthlyTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String value1;
  final String value2;
  final Color iconColor;

  final String comment;

  const MonthlyTile({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.value1,
    required this.value2,
    required this.comment,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle muliBold = TextStyle(
        fontFamily: 'Mulish', fontWeight: FontWeight.w700, fontSize: 12);
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            leading: TransactionIcon(color: iconColor, size: 50),
            title: Text(title,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
            subtitle: Text(subTitle,
                style: TextStyle(
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w800,
                    fontSize: 12)),
            trailing: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 246, 248, 252),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              width: 110,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 209, 77),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Text(value1, style: muliBold),
                    ),
                  ),
                  Container(
                    width: 35,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 246, 248, 252),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                    ),
                    child: Text(value2, style: muliBold),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(comment,
                    style: TextStyle(
                        fontFamily: 'Mulish', fontWeight: FontWeight.w700))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
