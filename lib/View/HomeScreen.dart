import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';
import 'package:livreur/Controller/HomeScreenController.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:livreur/View/ChatScreen.dart';
import 'package:livreur/View/OrderScreen.dart';
import 'package:livreur/Widgets/Vide.dart';
class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
   HomeScreenController controller = Get.put(HomeScreenController()) ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 34.h,),
              Row(
                children: [
                  SizedBox(width: 13.w,),
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30.r,
                      backgroundImage: AssetImage(controller.image),
                    ),
                  ),

                  Spacer(flex: 2,),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 88.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(73.r) ,
                        border: Border.all(color: Color(0xffE3E3E3))
                      ),
                      child: GetBuilder<HomeScreenController>(

                          builder: (controller) {

                            controller.is_actif = controller.switch_controller.value.obs ;

                            return  AdvancedSwitch(
                            controller: controller.switch_controller,
                            activeColor:Colors.white  ,
                            activeChild: AutoSizeText(
                              "Actif" ,
                              style: TextStyle(
                                fontFamily: "Golos",
                                fontSize: 14.sp ,
                                color: Color(0xff669965),
                              ),),
                            inactiveColor: Colors.white ,
                            inactiveChild: AutoSizeText("Inactif" ,
                              style: TextStyle(
                                fontFamily: "Golos",
                                fontSize: 14.sp ,
                                color: Color(0xffB4B4B4),
                              ),),
                            borderRadius: BorderRadius.circular(73.r),
                            width: 88.w,
                            height: 32.h,
                            thumb:
                                  Container(
                                  width: 24.w,
                                  height: 24.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: controller.switch_controller.value ? Color(0xff669965) : Color(0xffB4B4B4)
                                  ),
                                ),);
                              }
                            ),


                    ),
                  ),
                  Spacer(flex: 2,),
                  Expanded(
                    flex: 1,
                    child: IconButton (

                      icon: Icon(Icons.messenger_outline_outlined),
                      iconSize: 24.r,
                      onPressed: () { Get.to(ChatScreen()); },
                    ),
                  ),
                  SizedBox(width: 13.w,),
                ],
              ) ,
              SizedBox(height: 50.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 13.w,),
                  AutoSizeText(
                    "Nouvelles commandes" ,
                    style: TextStyle(
                      fontFamily: "Golos" ,
                      fontSize: 18.sp ,
                    ),
                  ),

                ],
              ) ,
              SizedBox(height: 15.h,),
              controller.nouvelles_commandes.isEmpty ? Vide() :
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.nouvelles_commandes.length,
                  itemBuilder: (item , index) {
                    return commande(
                      controller.nouvelles_commandes[index].nom_restaurant , controller.nouvelles_commandes[index].id , controller.nouvelles_commandes[index].adresse_restaurant,
                      controller.nouvelles_commandes[index].adresse_client , controller.nouvelles_commandes[index].contenu , controller.nouvelles_commandes[index].date ,controller.nouvelles_commandes[index].etat

                    );
                  }
                ),
              )

            ],
          )
        ));
  }
  Widget commande (
   String nom_restaurant ,
   String id ,
   String adresse_restaurant ,
   String adresse_client ,
   String contenu ,
   String date ,
   String etat ,


   ){
    return Container(
      width: 401.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9.r),
        color: Colors.white ,
        boxShadow:[BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.1) ,
          offset: Offset(0,2),
          spreadRadius: 2 ,
          blurRadius: 2 ,
        )]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height:14.w) ,
          Row(
            children: [
              SizedBox(width:12.w) ,
              AutoSizeText(nom_restaurant ,
                style: TextStyle(
                  fontFamily: "Golos" ,
                  fontSize: 18.sp ,

                ) ,) ,
              Spacer(),
              AutoSizeText(id ,
                style: TextStyle(
                  fontFamily: "Golos" ,
                  fontSize: 13.sp ,
                  color: Color(0xff909090) ,
                ) ,) ,
              SizedBox(width:17.w) ,
            ],
          ),
          SizedBox(height:11.w) ,
          Row(
            children: [
              SizedBox(width:12.w) ,
              AutoSizeText(adresse_restaurant,
                style: TextStyle(
                  fontFamily: "Golos" ,
                  fontSize: 13.sp ,
                ) ,
              ),
            ],
          ) ,
          SizedBox(height:17.w) ,
          Row(
            children: [
              Spacer(),
              Container(
                height: 32.h,
                width: 100.w,
                child: ElevatedButton(
                  onPressed: (){
                    Get.to(OrderScreen(nom_restaurant: nom_restaurant, id: id, adresse_restaurant: adresse_restaurant, adresse_client: adresse_client, contenu: contenu, date: date, etat: etat,));
                  } ,
                  child: Text(
                    'Continuer',
                    style: TextStyle(
                      fontFamily: 'Golos',
                      fontSize: 14.sp,
                      color: Color(0xff669965),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffE8F7E5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.r),
                      )),
                ),
              ),
              SizedBox(width:17.w) ,
            ],
          ),
          SizedBox(height:11.w) ,
        ],
      ),
    );
  }
}
