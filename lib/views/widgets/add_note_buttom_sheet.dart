import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_buttom.dart';
import 'package:notes_app/views/widgets/custom_text_feild.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextFeild(
              hint: 'Enter Title',
            ),
            SizedBox(
              height: 12,
            ),
            CustomTextFeild(
              hint: 'Contant',
              maxlines: 8,
            ),
            SizedBox(
              height: 64,
            ),
            CustomButtom(
              text: 'Add',
            ),
            SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
