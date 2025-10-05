import 'package:flutter/material.dart';
import 'package:notes/widgets/add_note_bottom_sheet.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/notes_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 30),
              customAppBar(),
              Expanded(child: NotesListView()),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(16),
              ),
              context: context,
              builder: (context) => const AddNoteBottomSheet(),
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
