import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_butom.dart';
import 'package:notes/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomTextField(hintText: "Title"),
          CustomTextField(hintText: "Content", maxLines: 5),
          SizedBox(height: 70),
          CustomButom(),
        ],
      ),
    );
  }
}
