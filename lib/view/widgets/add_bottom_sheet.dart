import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:note_app/controller/bottom_sheet_controller.dart';
import 'package:note_app/view/widgets/custom_botton.dart';
import 'package:note_app/view/widgets/custom_text_feild.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomBttomSheetForm(),
    );
  }
}

class CustomBttomSheetForm extends StatefulWidget {
  const CustomBttomSheetForm({Key? key}) : super(key: key);

  @override
  State<CustomBttomSheetForm> createState() => _CustomBttomSheetFormState();
}

class _CustomBttomSheetFormState extends State<CustomBttomSheetForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  BottomSheetControllerImp controller=Get.put(BottomSheetControllerImp());
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextFeild(
            hintText: 'title',
            onSaved: (val) {
              controller.onSaved(val: val,title: title!);

            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFeild(
            hintText: 'content',
            maxLines: 5,
            onSaved: (val) {
              controller.onSavedSub(val: val,subTitle: subtitle!);
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomBotton(
            title: 'Save',
            onPressed: () {
           controller.savedButton(formKey:formKey,autoValidateMode:autoValidateMode);
              }

          ),
        ],
      ),
    );
  }
}
