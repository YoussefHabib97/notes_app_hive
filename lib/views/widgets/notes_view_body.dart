import 'package:flutter/material.dart';

import 'notes_list_view.dart';

import 'custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        child: Column(
          children: [
            CustomAppBar(),
            Expanded(child: NotesListView()),
          ],
        ),
      ),
    );
  }
}
