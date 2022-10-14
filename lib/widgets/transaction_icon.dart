import 'package:flutter/material.dart';

class TransactionIcon extends StatelessWidget {
  final Color color;
  final double size;
  const TransactionIcon({Key? key, required this.color, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      alignment: Alignment.center,
      child: Container(
        width: 12,
        height: 15,
        decoration:
            BoxDecoration(border: Border.all(width: 2, color: Colors.white)),
      ),
    );
  }
}
