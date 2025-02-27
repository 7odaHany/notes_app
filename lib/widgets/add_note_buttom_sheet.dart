import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_filed.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
           Text(
            'Add Note',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            hintText: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            hintText: 'content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
/*
Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const Text(
            'Add Note',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              hintText: 'Title',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const TextField(
            maxLines: 5,
            decoration: InputDecoration(
              hintText: 'Description',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Add Note'),
          ),
        ],
      ),
    );
*/