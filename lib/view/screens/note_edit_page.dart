import 'package:flutter/material.dart';
import 'package:note_app/constant/constant.dart';
import 'package:note_app/view/widgets/custom_app_bar.dart';
import 'package:note_app/view/widgets/custom_botton.dart';
import 'package:note_app/view/widgets/custom_text_feild.dart';

class NoteEditPage extends StatelessWidget {
  const NoteEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children:  const [
            SizedBox(height: 75),
            CustomAppBar(
              title: 'Note Editing',
              icon: Icon(
                Icons.check,
                size: 30,
              ),
            ),
            SizedBox(height: 50),
            CustomTextFeild(hintText: 'title'),
            SizedBox(height: 20),
            CustomTextFeild(hintText: 'content',maxLines: 7,),
            SizedBox(height: 20),
            CustomBotton(title: 'Save'),
          ],
        ),
      ),
    );
  }
}
