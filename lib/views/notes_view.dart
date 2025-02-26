import 'package:flutter/material.dart';
import 'package:note_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        
        backgroundColor: Colors.cyan,
        onPressed: (){},
        child: const Icon(Icons.add , color: Colors.black),
      ),
      body:  const NotesViewBody(),
    );
  }
}
class CustomFloatingActionButton
 extends StatelessWidget {
  const CustomFloatingActionButton
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

