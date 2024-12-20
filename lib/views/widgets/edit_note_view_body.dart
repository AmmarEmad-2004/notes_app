import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_feild.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 24,
          ),
          CustomTextFeild(
            hint: 'Edit Title',
          ),
          SizedBox(
            height: 12,
          ),
          CustomTextFeild(
            hint: 'Edit Content',
            maxlines: 8,
          )
        ],
      ),
    );
  }
}
