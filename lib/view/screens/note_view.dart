import 'package:flutter/material.dart';
import 'package:note_app/view/widgets/body.dart';
import 'package:note_app/view/widgets/add_bottom_sheet.dart';
class NoteVeiw extends StatelessWidget {
  const NoteVeiw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
         showModalBottomSheet(
             shape:RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(16)
             ),
             context: context, builder: (context){
           return const AddBottomSheet();
         });
      },
      child:const Icon(Icons.add),
      ),
      body:const Body(),
    );
  }
}