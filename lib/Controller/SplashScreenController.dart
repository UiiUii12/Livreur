
import 'dart:async';

import 'package:get/get.dart';
import 'package:livreur/View/CurrentPage.dart';

class SplashScreenController extends GetxController{
  bool userLogged=false;
  @override
  void onInit() {
    super.onInit();

    Timer(
        Duration(milliseconds:6000),
            ()=>Get.off(Main_Page()));

  }
}