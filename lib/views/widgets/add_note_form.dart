import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/colors_list_view.dart';
import 'package:notes_app/views/widgets/custom_buttom.dart';
import 'package:notes_app/views/widgets/custom_text_feild.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextFeild(
            onSaved: (value) {
              title = value;
            },
            hint: 'Enter Title',
          ),
          const SizedBox(
            height: 12,
          ),
          CustomTextFeild(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'Contant',
            maxlines: 8,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: ColorsListVeiw(),
          ),
          const SizedBox(
            height: 50,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButtom(
                isloading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDateTime = DateTime.now();
                    var dateTime = DateFormat('dEEE y').format(currentDateTime);
                    var noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: dateTime,
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                text: 'Add',
              );
            },
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
