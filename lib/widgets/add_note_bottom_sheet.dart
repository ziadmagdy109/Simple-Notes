import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_butom.dart';
import 'package:notes/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: form_add_butom(),
      ),
    );
  }
}

class form_add_butom extends StatefulWidget {
  form_add_butom({super.key});

  @override
  State<form_add_butom> createState() => _form_add_butomState();
}

class _form_add_butomState extends State<form_add_butom> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextField(
            hintText: "Title",
            onsaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          CustomTextField(
            hintText: "Content",
            maxLines: 5,
            onsaved: (value) {
              subtitle = value;
            },
          ),
          const SizedBox(height: 70),
          CustomButom(
            ontap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
