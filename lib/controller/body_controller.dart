import 'package:get/get.dart';
import 'package:note_app/constant/constant_routes.dart';

abstract class BodyController extends GetxController{
  toEditPage();
}
class BodyControllerImp extends BodyController{
  @override
  toEditPage() {
Get.toNamed(AppRoutes.editNotePage);
  }
  
}