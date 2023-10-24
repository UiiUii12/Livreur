

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:livreur/Model/Classes/Commande.dart';

class HomeScreenController extends GetxController{
  String image ="Assets/image 2.png" ;
  ValueNotifier<bool> switch_controller = ValueNotifier<bool>(false);
  RxBool is_actif = true.obs ;
  List<Commande> nouvelles_commandes =[
    Commande("Cité 2000 logements Akid Lotfi Boulevard principal", "2023/05/14", "Magic Pizza", "1", "Cité 2000 logements Akid Lotfi Boulevard principal", "contenu", "etat") ,
    Commande("Cité 2000 logements Akid Lotfi Boulevard principal", "2023/05/14", "Magic Pizza", "2", "Cité 2000 logements Akid Lotfi Boulevard principal", "contenu", "etat") ,
    Commande("Cité 2000 logements Akid Lotfi Boulevard principal", "2023/05/14", "Magic Pizza", "3", "Cité 2000 logements Akid Lotfi Boulevard principal", "contenu", "etat") ,
    Commande("Cité 2000 logements Akid Lotfi Boulevard principal", "2023/05/14", "Magic Pizza", "4", "Cité 2000 logements Akid Lotfi Boulevard principal", "contenu", "etat") ,
  ] ;
}