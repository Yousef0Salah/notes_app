import 'package:flutter/material.dart';
import 'package:notes/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        splashColor: Colors.green,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddNoteBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: NotesViewsBody(),
    );
  }
}
