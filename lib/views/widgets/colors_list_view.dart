import 'package:flutter/material.dart';

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
  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.teal,
    Colors.cyan,
    Colors.brown,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: ColorsItem(
                color: colors[index],
                isSelected: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}