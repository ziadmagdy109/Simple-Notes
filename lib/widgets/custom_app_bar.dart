import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_icon.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Notes",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        customIcon(),
      ],
    );
  }
}
