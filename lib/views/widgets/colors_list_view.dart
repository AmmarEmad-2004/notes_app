import 'package:flutter/material.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/views/widgets/color_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorsListVeiw extends StatefulWidget {
  const ColorsListVeiw({super.key});

  @override
  State<ColorsListVeiw> createState() => _ColorsListVeiwState();
}

class _ColorsListVeiwState extends State<ColorsListVeiw> {
  int currentColorIndex = 0;
  final List colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.teal,
    Colors.brown,
    Colors.grey,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2 * 38,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  currentColorIndex = index;
                  BlocProvider.of<AddNoteCubit>(context).selectedColor =
                      colors[index];
                  setState(() {});
                },
                child: ColorItem(
                  color: colors[index],
                  isActive: currentColorIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
