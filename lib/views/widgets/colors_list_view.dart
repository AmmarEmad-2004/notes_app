import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/color_item.dart';

class ColorsListVeiw extends StatefulWidget {
  const ColorsListVeiw({super.key});

  @override
  State<ColorsListVeiw> createState() => _ColorsListVeiwState();
}

class _ColorsListVeiwState extends State<ColorsListVeiw> {
  int currentColorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2 * 38,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  currentColorIndex = index;
                  setState(() {});
                },
                child: ColorItem(
                  isActive: currentColorIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
