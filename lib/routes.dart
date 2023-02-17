
import 'package:flutter/material.dart';
import 'package:note_app/constant/constant_routes.dart';
import 'package:note_app/view/screens/note_edit_page.dart';
import 'package:note_app/view/screens/note_view.dart';

Map<String,Widget Function(BuildContext context)> routes ={
  AppRoutes.editNotePage:(context)=>const NoteEditPage(),
  AppRoutes.notePage:(context)=>const NoteVeiw(),
};