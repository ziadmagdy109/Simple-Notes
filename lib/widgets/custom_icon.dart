import 'package:flutter/material.dart';

class customIcon extends StatelessWidget {
  const customIcon({super.key, this.icon});
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.03),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(child: Icon(icon)),
    );
  }
}
