import 'package:flutter/material.dart';
import 'package:note_app/constant/constant.dart';
class CustomBotton extends StatelessWidget {
  const CustomBotton({Key? key, required this.title, this.onPressed}) : super(key: key);
final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(.6),
        borderRadius: BorderRadius.circular(16),

      ),
      width: double.infinity,
      child: MaterialButton(onPressed: onPressed
        ,child: Text(title,
          style: const TextStyle(
            fontSize: 20,
          ),),

      ),
    );
  }
}
