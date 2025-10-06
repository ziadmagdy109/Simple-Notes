import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/my_app.dart';
import 'package:notes/simple_bloc_observer.dart';

void main() async {
  await Hive.initFlutter(); //1

  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter()); //2
  await Hive.openBox<NoteModel>(kNotesBox); //3
  runApp(const MyApp());
}
