import 'package:flutter/material.dart';

class CustumButton extends StatelessWidget {
  final Function()? onTap;
  final Widget child;
  const CustumButton({super.key, this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onTap, child: child);
  }
}
