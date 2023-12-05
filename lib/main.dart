import 'package:flutter/material.dart';

// Constants
import 'package:notes_app/constants.dart';

// Package imports
import 'package:hive_flutter/adapters.dart';

// Model imports
import 'package:notes_app/models/note_model.dart';

// View imports
import 'package:notes_app/views/notes_view.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox(kNotesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home: const NotesView(),
    );
  }
}
