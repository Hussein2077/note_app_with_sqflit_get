import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:note_app/routes.dart';
import 'package:note_app/view/screens/note_view.dart';

void main() async{

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super. key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Note App',
      theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins'
      ),
      home: const NoteVeiw(),
      routes:routes,
    );
  }
}