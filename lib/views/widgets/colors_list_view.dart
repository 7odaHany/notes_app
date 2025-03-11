import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key, required this.isSelected, required this.color});
final bool isSelected;
final Color color;
  @override
  Widget build(BuildContext context) {
    return isSelected ?  
     CircleAvatar(
      radius: 38,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 34,
        backgroundColor: color,
      ),
    ) 
     : CircleAvatar(
      radius: 38,
      backgroundColor: color,
    );
  }
}

class ColorListWiew extends StatefulWidget {
  const ColorListWiew({super.key});

  @override
  State<ColorListWiew> createState() => _ColorListWiewState();
}

class _ColorListWiewState extends State<ColorListWiew> {
  int currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                  BlocProvider.of<AddNoteCubit>(context).selectedColor = kColors[index];
                });
              },
              child: ColorsItem(
                color: kColors[index],
                isSelected: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}