import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes/cubit/all_notes_cubit.dart';
import 'package:notes/views/notes_view_body.dart';
import 'package:notes/widgets/add_note_bottom_sheet.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => AllNotesCubit(),
        child: Scaffold(
          body: NotesViewBody(),
          resizeToAvoidBottomInset: false,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
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
      ),
    );
  }
}
