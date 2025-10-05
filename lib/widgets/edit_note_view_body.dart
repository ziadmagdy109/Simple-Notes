import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 30),
              customAppBar(icon: Icons.check),
              SizedBox(height: 32),
              CustomTextField(hintText: "Title"),
              SizedBox(height: 16),
              CustomTextField(hintText: "Content", maxLines: 5),
            ],
          ),
        ),
      ),
    );
  }
}
