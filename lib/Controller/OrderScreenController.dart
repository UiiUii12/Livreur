import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:livreur/Model/Classes/Plat.dart';
class OrderScreenController extends GetxController{
  RxInt current_index =0.obs ;
  RxBool is_checked = false.obs ;
  final digitCode1=new TextEditingController();
  final digitCode2=new TextEditingController();
  final digitCode3=new TextEditingController();
  final digitCode4=new TextEditingController();
  final digitCode5=new TextEditingController();
  final digitCode6=new TextEditingController();
  List<Plat> contenu =[
   Plat("1" , "Pizza Poulet" , "Fromage, Poulet" ,400 , 2),
    Plat("2" , "Burger Poulet" , "Fromage, Poulet" ,400 , 10),
    Plat("3" , "Pizza Megga" , "Fromage, Poulet" ,400 , 1),
    Plat("4" , "Tacos " , "Fromage, Poulet" ,1000 , 5),
    Plat("6" , "Pizza Poulet" , "Fromage, Poulet" ,400 , 3),
    Plat("7" , "Sandwich Poulet" , "Fromage, Poulet" ,400 , 9),
    Plat("8" , "Pizza" , "Fromage, Poulet" ,400 , 1),
    Plat("9" , "Pizza Poulet" , "Fromage, Poulet" ,400 , 8),


  ];
  void find_location (String address) async {
    // MapsLauncher.launchQuery(address) ;

  }


}