import 'package:flutter/material.dart';

class ServicesCard extends StatelessWidget {
  final String label;
  final String icon;

  const ServicesCard({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        height: 85,
        width: 85,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                icon,
                height: 30,
                width: 30,
              ),
              SizedBox(height: 3),
              Text(label,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12))
            ]),
      ),
    );
  }
}
