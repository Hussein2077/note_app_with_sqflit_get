import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/body_controller.dart';

class TextBody extends StatelessWidget {
  const TextBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BodyControllerImp controller = Get.put(BodyControllerImp());
    return InkWell(
      onTap: (){
        controller.toEditPage();
      },
      child: Container(
        margin:const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24), color: Colors.orange),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Hussein',
                style: TextStyle(color: Colors.black,
                fontSize: 24
                ),
              ),
              subtitle:  Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  'I was walk in the street lalalalaal i was press on peace of trash lalalalalala',
                  style: TextStyle(color: Colors.black.withOpacity(.5)),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete,size: 40,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text('May 22 2023',
                style: TextStyle(color: Colors.black.withOpacity(.5)),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
