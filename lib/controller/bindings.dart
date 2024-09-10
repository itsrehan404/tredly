import 'package:get/get.dart';
import 'package:tredly/controller/auth_controller.dart';
import 'package:tredly/controller/home_controller.dart';
import 'package:tredly/controller/list_controller.dart';

class ControllerBindings extends Bindings{
  @override
  void dependencies(){
    Get.put<HomeController>(HomeController());
    Get.put<ListController>(ListController());
    Get.put<AuthController>(AuthController());
  }
}