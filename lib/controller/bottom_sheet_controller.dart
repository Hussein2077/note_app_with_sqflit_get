import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../constant/constant.dart';

abstract class BottomSheetController extends GetxController {
  onSaved({required val, required String title});

  onSavedSub({required val, required String subTitle});

  savedButton(
      {required GlobalKey<FormState> formKey,
      required AutovalidateMode autoValidateMode});
}

class BottomSheetControllerImp extends BottomSheetController {
  late String title;
  late String subTitle;
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  onSaved({required val, required String title}) {
    title = val;
    update();
  }

  @override
  onSavedSub({required val, required String subTitle}) {
    subTitle = val;
    update();
  }

  @override
  savedButton(
      {required GlobalKey<FormState> formKey,
      required AutovalidateMode autoValidateMode}) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();

    } else {
      autoValidateMode = AutovalidateMode.always;

    }
    update();
  }


}
