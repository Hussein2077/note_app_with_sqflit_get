import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon}) : super(key: key);
final String title;
final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          title,
          style:const TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        const Spacer(),
        Container(
          height: 46,
          width: 46,
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(16),
          ),
          child: IconButton(
            onPressed: () {},
            icon: icon,
          ),
        )
      ],
    );
  }
}
