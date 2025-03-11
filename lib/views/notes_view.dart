import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/views/widgets/add_note_buttom_sheet.dart';
import 'package:note_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: kPrimaryColor,
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled:
                  true, // info: isScrollControlled is a property that allows the bottom sheet to be full screen
              context: context,
              builder: (context) {
                return const AddNoteButtonSheet();
              });
        },
        child: const Icon(Icons.add, color: Colors.black),
      ),
      body: const NotesViewBody(),
    );
  }
}
