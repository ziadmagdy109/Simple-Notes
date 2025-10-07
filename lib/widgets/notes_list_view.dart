import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes/cubit/all_notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllNotesCubit, AllNotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<AllNotesCubit>(context).notes!;
        return ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: NoteItem(note: notes[index]),
          ),
          itemCount: notes.length,
        );
      },
    );
  }
}
