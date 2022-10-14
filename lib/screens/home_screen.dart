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

class HomeScreen extends StatelessWidget {
  static String routeName = 'HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

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
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                BigCard(),
                Container(
                  padding: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height * 0.26,
                  width: MediaQuery.of(context).size.width * 0.41,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SmallCard(
                        backgroundColor: Color.fromARGB(255, 190, 246, 216),
                        balance: '\$ 3250.50',
                        cardNumber: '****  ****  ****  4321',
                        rupay: false,
                      ),
                      SmallCard(
                        backgroundColor: Color.fromARGB(255, 253, 239, 239),
                        balance: '\$ 1850.45',
                        cardNumber: '****  ****  ****  1245',
                        rupay: true,
                      ),
                    ],
                  ),
                ),
              ]),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Quick Service',
                      style: TextStyle(fontWeight: FontWeight.w600)),
                  Text('View All', style: linkStyle)
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  ServicesCard(
                    label: 'Credit Card',
                    icon: 'images/credit-card.png',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  ServicesCard(
                    label: 'Investments',
                    icon: 'images/investments.png',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  ServicesCard(
                    label: 'Loans',
                    icon: 'images/loans.png',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  ServicesCard(
                    label: 'Shop',
                    icon: 'images/shop.png',
                  ),
                ],
              ),
              SizedBox(height: 10),
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
                  Text('Transactions',
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
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Monthly Budget',
                    style: TextStyle(fontWeight: FontWeight.w600)),
              ),
              SizedBox(height: 5),
              Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      MonthlyTile(
                        title: 'Transportation',
                        subTitle: 'AVG Spent \$24 a Week',
                        value1: '\$58',
                        value2: '\$124',
                        comment:
                            'Your Transportation budget on a Good Condition.',
                        iconColor: Color.fromARGB(255, 255, 102, 138),
                      ),
                      MonthlyTile(
                        title: 'Shopping',
                        subTitle: 'Next Payment 28 Dec',
                        value1: '\$447',
                        value2: '\$847',
                        comment:
                            'Your Transportation budget on a Good Condition.',
                        iconColor: Color.fromARGB(255, 54, 66, 148),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    ));
  }
}
