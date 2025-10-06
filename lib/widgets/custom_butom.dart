import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class CustomButom extends StatelessWidget {
  const CustomButom({super.key, this.ontap, this.isLoading = false});
  final void Function()? ontap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isLoading
              ? CircularProgressIndicator(color: Colors.black)
              : Text(
                  "Add",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
        ),
      ),
    );
  }
}
