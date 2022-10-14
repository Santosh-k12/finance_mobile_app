import 'package:finance_mobile_app/widgets/transaction_icon.dart';
import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final Color iconColor;
  final String title;
  final String subTitle;
  final String amount;
  final bool debit;

  const TransactionTile({
    Key? key,
    required this.iconColor,
    required this.title,
    required this.subTitle,
    required this.amount,
    required this.debit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TransactionIcon(
        size: 50,
        color: iconColor,
      ),
      title: Text(title,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
      subtitle: Text(subTitle,
          style: TextStyle(
              fontFamily: 'Mulish', fontWeight: FontWeight.w700, fontSize: 12)),
      trailing: Text(
        '${(debit) ? '-' : ''}\$${amount}',
        style: TextStyle(
          color: (debit ? Colors.red : Colors.green),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
