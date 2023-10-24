
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:livreur/Controller/Current_Page_Controller.dart';
import 'package:livreur/View/ProfilScreen.dart';
import 'HomeScreen.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class Main_Page extends StatelessWidget {

  Main_Page({Key? key,  }) : super(key: key);

  Current_Page_Controller controller= Get.put(Current_Page_Controller(),permanent: true);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> history=
    [
      {"index" :controller.Home_previous, "Screen" : HomeScreen()},
      {"index" :controller.Cart_previous, "Screen":HomeScreen()},
      {"index":controller.MesCommandes_previous,"Screen":ProfileScreen()}
    ];

    return WillPopScope(
        onWillPop: () async{


          print(controller.currentindex);
          print(history[controller.currentindex.value]["index"]);
          print('///////////////////////////////');
          controller.currentindex.value=history[controller.currentindex.value]["index"];
          print('///////////////////////////////');
          print(controller.currentindex);


          return false;
        },
        child: SafeArea(child:
        GetX<Current_Page_Controller>(

            builder: (controller) =>
                Scaffold(
                  body:
                  history[controller.currentindex.value]["Screen"],

                  bottomNavigationBar:
                  BottomNavigationBar(
                    type : BottomNavigationBarType.fixed ,
                    onTap : (int index){

                      print(history[index]["index"]);
                      history[index]["index"]=controller.currentindex.value ;
                      print(history[index]["index"]);
                      controller.currentindex.value=index;

                    } ,
                    backgroundColor: Colors.white,
                    currentIndex : controller.currentindex.value ,
                    selectedItemColor: Color(0xffE6424B),
                    unselectedItemColor: Color(0xffADADAD),
                    elevation: 8.0,
                   // selectedLabelStyle: theme().textTheme.bodyText2 ,
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(
                            EvaIcons.homeOutline
                        ),
                        label: 'Accueil',
                      ),
                      BottomNavigationBarItem(
                          icon: Icon(
                              EvaIcons.clockOutline
                          ),
                          label:'Historique'
                      ),

                      BottomNavigationBarItem(
                          icon: Icon(
                              EvaIcons.personOutline
                          ),
                          label: 'Profil'
                      ),

                    ],
                  ),
                )),
        ));
  }



}