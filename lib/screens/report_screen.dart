// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dotted_line/dotted_line.dart';
import 'package:finance_mobile_app/Provider/login_provider.dart';
import 'package:finance_mobile_app/widgets/big_card.dart';
import 'package:finance_mobile_app/widgets/monthly_tile.dart';
import 'package:finance_mobile_app/widgets/services_card.dart';
import 'package:finance_mobile_app/widgets/small_card.dart';
import 'package:finance_mobile_app/widgets/transaction_icon.dart';
import 'package:finance_mobile_app/widgets/transaction_tile.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:provider/provider.dart';

class ReportScreen extends StatelessWidget {
  static String routeName = 'ReportScreen';
  const ReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProfileClass profileClass =
        Provider.of<LoginProvider>(context, listen: false).getProfile();

    TextStyle linkStyle = TextStyle(
        fontFamily: 'Mulish',
        fontWeight: FontWeight.w800,
        decoration: TextDecoration.underline,
        fontSize: 10,
        color: Colors.red);
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          color: const Color.fromARGB(255, 246, 248, 252),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Morning',
                        style: TextStyle(
                            fontFamily: 'Mulish', fontWeight: FontWeight.w700),
                      ),
                      Text(
                        profileClass.profileName,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ],
                  ),
                  Expanded(
                    child: SizedBox(width: 2),
                  ),
                  Image.asset(
                    'images/notification-icon.png',
                    height: 28,
                    width: 28,
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundImage: NetworkImage(profileClass.profilePic),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.fromLTRB(14, 0, 14, 0),
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 190, 246, 216),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Expanded(
                        //   flex: 2,
                        //   child: Align(
                        //     alignment: Alignment.topRight,
                        //     child: Image.asset(
                        //       'images/mastercard-logo.png',
                        //       height: 35,
                        //       width: 35,
                        //     ),
                        //   ),
                        // ),
                        Text(
                          '\$ 3250.50',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '****  ****  ****  4321',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Image.asset(
                      'images/mastercard-logo.png',
                      height: 40,
                      width: 40,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              DottedBorder(
                dashPattern: [5],
                borderType: BorderType.RRect,
                radius: Radius.circular(10),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          TransactionIcon(
                              color: Color.fromARGB(255, 19, 217, 156),
                              size: 60),
                          SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Income',
                                  style: TextStyle(
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w700)),
                              Text('\$4,264',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20)),
                            ],
                          ),
                        ],
                      ),

                      DottedLine(
                        dashLength: 5,
                        lineLength: 50,
                        direction: Axis.vertical,
                      ),

                      // CustomPaint(
                      //     size: Size(1, double.infinity),
                      //     painter: DashedLineVerticalPainter()),
                      Row(
                        children: [
                          TransactionIcon(
                              color: Color.fromARGB(255, 255, 49, 98),
                              size: 60),
                          SizedBox(width: 8),
                          Column(
                            children: [
                              Text('Expense',
                                  style: TextStyle(
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w700)),
                              Text('\$1,264',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Spending Breakdown',
                      style: TextStyle(fontWeight: FontWeight.w600)),
                  Text('See All', style: linkStyle)
                ],
              ),
              SizedBox(height: 5),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: ListView(
                  children: [
                    TransactionTile(
                      amount: '275.84',
                      debit: true,
                      iconColor: Color.fromARGB(255, 167, 108, 108),
                      subTitle: '10:45 PM, Dec 20',
                      title: 'Amazon Gift Card',
                    ),
                    TransactionTile(
                      amount: '485.50',
                      debit: false,
                      iconColor: Color.fromARGB(255, 238, 179, 117),
                      subTitle: '12:25 PM, Dec 29',
                      title: 'FreeLance Work',
                    ),
                    TransactionTile(
                      amount: ' 195.24',
                      debit: true,
                      iconColor: Color.fromARGB(255, 54, 66, 148),
                      subTitle: '08:15 AM, Jan 05',
                      title: 'Food & Beverages',
                    ),
                    TransactionTile(
                      amount: '358.45',
                      debit: true,
                      iconColor: Color.fromARGB(255, 255, 102, 138),
                      subTitle: '07:48 PM, Jan 14',
                      title: 'Dropbox',
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    ));
  }
}
