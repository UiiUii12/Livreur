import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:livreur/Controller/OrderScreenController.dart';
import 'package:livreur/Widgets/customWithButtonDialog.dart';
class OrderScreen extends StatelessWidget {
  String nom_restaurant ;
  String id ;
  String adresse_restaurant ;
  String adresse_client ;
  String contenu ;
  String date ;
  String etat ;
  OrderScreen({Key? key , required this.nom_restaurant ,required this.id , required this.adresse_restaurant , required this.adresse_client , required this.contenu , required this.date , required this.etat}) : super(key: key);
  OrderScreenController controller = Get.put(OrderScreenController());
  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
          body:Theme(data: ThemeData(
             canvasColor: Colors.white,
             colorScheme :Theme.of(context).colorScheme.copyWith(

               primary: Color(0xffE6424B) ,onSurface: Color(0xffB4B4B4) ) ,
          ), child:
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:28.h),
              SizedBox(
                height: 28.h,
                width: 29.w,
                child: FloatingActionButton(
                  foregroundColor:  Color(0xffDFDFDF) ,
                  elevation: 0,
                  onPressed: () {
                    Get.back() ;
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 20.sp,
                  ),
                  backgroundColor: Color(0xffDFDFDF),
                ),
              ),

              Container(
                height: 830.h,
                width: double.infinity,
                child: GetX<OrderScreenController>(
                  builder: (controller) {
                    return Stepper(

                      type: StepperType.horizontal,
                        currentStep: controller.current_index.value,
                        elevation: 0,
                        steps: [
                          Step(
                              isActive : controller.current_index.value >= 0 ,
                              title: AutoSizeText(""),
                              content:
                              Container(
                                height : 598.h ,
                                child: Column(
                                    children : [
                                      Spacer(),
                                      GestureDetector(
                                        onTap: ()=> controller.find_location(adresse_restaurant),
                                          child: Image(image : AssetImage("Assets/Group 33.png") , width: 94.w, height: 94.h,)) ,
                                      SizedBox(height:27.h) ,
                                      AutoSizeText(nom_restaurant ,
                                        style: TextStyle(
                                            fontFamily: "Golos",
                                            fontSize: 22.sp
                                        ),) ,
                                      SizedBox(height: 22.h,),
                                      AutoSizeText(adresse_restaurant ,
                                          textAlign : TextAlign.center ,
                                          style:TextStyle(
                                              fontFamily: "Golos",
                                              fontSize: 14.sp
                                          )) ,
                                      Spacer(),
                                    ]
                                ),
                              ),
                              label: AutoSizeText("Restaurant" ,
                                  style:TextStyle(
                                      fontFamily: "Golos",
                                      fontSize: 13.sp ,
                                    fontWeight: FontWeight.bold
                                  )),
                            state: controller.current_index.value > 0 ? StepState.complete : StepState.indexed ,
                          ),
                          Step(
                            isActive : controller.current_index.value >= 1 ,
                            title: AutoSizeText(""),
                            content :Commande(),

                            label: AutoSizeText("Commande" ,
                                style:TextStyle(
                                    fontFamily: "Golos",
                                    fontSize: 13.sp ,
                                    fontWeight: FontWeight.bold

                                )),
                            state: controller.current_index.value > 1 ? StepState.complete : StepState.indexed ,
                          ),
                          Step(
                            isActive : controller.current_index.value >= 2 ,
                            title: AutoSizeText(""),
                            content:  Container(
                              height : 598.h ,
                              child: Column(
                                  children : [
                                    Spacer(),
                                    GestureDetector(
                                        onTap: ()=>controller.find_location(adresse_client),
                                        child: Image(image : AssetImage("Assets/Group 32.png") , width: 94.w, height: 94.h,)) ,
                                    SizedBox(height:27.h) ,
                                    AutoSizeText(adresse_client ,
                                      textAlign : TextAlign.center ,
                                      style: TextStyle(
                                          fontFamily: "Golos",
                                          fontSize: 22.sp
                                      ),) ,

                                    Spacer(),
                                  ]
                              ),
                            ),
                            label: AutoSizeText("Client" ,
                                style:TextStyle(
                                    fontFamily: "Golos",
                                    fontSize: 13.sp ,
                                    fontWeight: FontWeight.bold

                                )),
                            state: controller.current_index.value > 2 ? StepState.complete : StepState.indexed ,

                          ),
                          Step(
                            isActive : controller.current_index.value == 3 ,
                            title: AutoSizeText(""),
                            content: Container(
                              height : 567.h ,
                              child: Column(
                                children: [
                                  Spacer(flex: 1,),
                                  Image(image : AssetImage("Assets/code.png")) ,
                                  SizedBox(height:30.h),
                                      AutoSizeText("Veuillez entrer le code de confirmation" ,
                                      style:TextStyle(
                                          fontFamily: "Golos",
                                          fontSize: 16.sp
                                      )) ,
                                  SizedBox(height:35.h),
                                  Row(
                                    children: [

                                      _textFieldOTP(
                                        first: true,
                                        last: false,
                                        numero: 1,
                                        digitCodeN: controller.digitCode1,
                                      ),
                                      SizedBox(width: 11.4.w,),
                                      _textFieldOTP(
                                        first: false,
                                        last: false,
                                        numero: 2,
                                        digitCodeN: controller.digitCode2,
                                      ),
                                      SizedBox(width: 11.4.w,),
                                      _textFieldOTP(
                                        first: false,
                                        last: false,
                                        numero: 3,
                                        digitCodeN: controller.digitCode3,
                                      ),
                                      SizedBox(width: 11.4.w,),
                                      _textFieldOTP(
                                        first: false,
                                        last: false,
                                        numero: 4,
                                        digitCodeN: controller.digitCode4,
                                      ),
                                      SizedBox(width: 11.4.w,),
                                      _textFieldOTP(
                                        first: false,
                                        last: false,
                                        numero: 5,
                                        digitCodeN: controller.digitCode5,
                                      ),
                                      SizedBox(width: 11.4.w,),
                                      _textFieldOTP(
                                        first: false,
                                        last: true,
                                        numero: 6,
                                        digitCodeN: controller.digitCode6,
                                      ),

                                    ],
                                  ),
                                  Spacer(flex: 2,),
                                ],
                              ),
                            ),
                            label: AutoSizeText("Confirmation" ,
                                style:TextStyle(
                                    fontFamily: "Golos",
                                    fontSize: 13.sp ,
                                    fontWeight: FontWeight.bold

                                )),
                          ),
                        ],
                      onStepContinue: (){
                        controller.current_index< 3 ? controller.current_index++ : null ;
                      },
                      controlsBuilder: (context , details){
                        return Column(
                          children: [
                            Container(
                              height: 56.h,
                              width: 401.w,
                              child: ElevatedButton(
                                onPressed: (){
                                  controller.current_index< 3 ? controller.current_index++ : null ;
                                } ,
                                child: Text(
                                  'Continuer',
                                  style: TextStyle(
                                    fontFamily: 'Golos',
                                    fontSize: 22.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xffE6424B),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9.0),
                                    )),
                              ),
                            ),
                            SizedBox(height: 10.h,) ,
                            controller.current_index ==3 ? Align(
                              alignment: Alignment.center,
                              child: RichText(
                                maxLines: 1,
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Vous avez un problème ?',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                        fontFamily: 'Golos',
                                      )),
                                  TextSpan(
                                      recognizer: TapGestureRecognizer()
                                      ..onTap = (){
                                        customWithButtonDialog();
                                      } ,
                                      text: ' Signaler',
                                      style: TextStyle(
                                        color: Color(0xffE6424B),
                                        fontSize: 18.sp,
                                        fontFamily: 'Golos',
                                      ))
                                ]),
                              ),
                            ): Container()
                          ],
                        );

                      },
                    );
                  }
                )
              )
            ],
          ),
        ))
    );
  }
  Widget Commande(){
    return Container(

      width: 428.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText("Contenu" ,
          style: TextStyle(
            fontSize: 18.sp ,
            fontFamily: "Golos" ,
            fontWeight: FontWeight.w500 ,
          ),),
          SizedBox(height:17.h),
          ListView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.contenu.length,
            itemBuilder: (item , index) {
              return Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText("${controller.contenu[index].quantite}x ${controller.contenu[index].nom_plat} ${controller.contenu[index].prix} DA" ,
                          style: TextStyle(
                            fontSize: 15.sp ,
                            fontFamily: "Golos" ,
                            fontWeight: FontWeight.w400 ,
                          ),
                        ),
                        AutoSizeText(controller.contenu[index].description,
                          style: TextStyle(
                            color: Color(0xff9D9D9D) ,
                            fontSize: 15.sp ,
                            fontFamily: "Golos" ,
                            fontWeight: FontWeight.w400 ,
                          ),),
                      ],
                    ),
                  ),
                  GetX<OrderScreenController>(
                    builder: (context) {
                      return Checkbox(
                          shape: CircleBorder(),
                          side: BorderSide(color: Color(0xff669965)) ,
                          fillColor: MaterialStateProperty.all(Color(0xff669965)),
                          value:controller.is_checked.value ,
                          onChanged: (checked){
                            controller.is_checked.value=!controller.is_checked.value ;
                          } ,

                      );
                    }
                  )


                ],
              );
            }
          ) ,
          
          SizedBox(height:20.h),
          Divider(color: Color(0xffD9D9D9),) ,
          SizedBox(height:10.h),
          AutoSizeText("Date" ,
            style: TextStyle(
              fontSize: 15.sp ,
              fontFamily: "Golos" ,
              fontWeight: FontWeight.w400 ,
            ),),
          AutoSizeText("6 Novembre 2022 - 21:32",
          style: TextStyle(
            color: Color(0xff9D9D9D),
            fontSize: 15.sp ,
            fontFamily: "Golos" ,
            fontWeight: FontWeight.w400 ,
          ),) ,
          SizedBox(height: 15.h,),
          Divider(color: Color(0xffD9D9D9),) ,
          SizedBox(height: 12.h,),
          AutoSizeText("Message" ,
            style: TextStyle(
              fontSize: 18.sp ,
              fontFamily: "Golos" ,
              fontWeight: FontWeight.w500 ,
            ),),
          SizedBox(height: 8.h,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 12.h , horizontal: 10.w),
            height: 95.h,
            width: 379.w,
            decoration: BoxDecoration(
              color: Color(0xffFAFAFA),
              borderRadius: BorderRadius.circular(9.r),
            ),
            child: AutoSizeText(
              "Bonsoir,S'il vous plaît pizza avec sauce tomate ,mayonnaise et 2 gobelets .Merci d'avance." ,
              style: TextStyle(
                color: Color(0xff9D9D9D),
                fontSize: 13.sp ,
                fontFamily: "Golos" ,
                fontWeight: FontWeight.w400 ,
              ),

            ),
          ),

        ],
      ),
    );
  }
  Widget _textFieldOTP(
      {required bool first,
        required bool last,
        required int numero,
        required TextEditingController digitCodeN}) {
    return Container(
      height: 57.h,
      width: 52.w,
      decoration: BoxDecoration(
          color: Color(0xffE4E4E4), borderRadius: BorderRadius.circular(9)),
      child: TextFormField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
        ],
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.number,
        showCursor: false,
        textAlignVertical: TextAlignVertical.center,
        cursorColor: Colors.black,
        textAlign: TextAlign.center,
        controller: digitCodeN,
        style: TextStyle(
          fontSize: 28.sp,
          fontFamily: 'Golos',
        ),
        onChanged: (value) {
         /* controller.onSubmitOTP();
          if ((value.length == 1) && (last == false)) {
            FocusScope.of(context).nextFocus();
          } else if ((value.length == 0) && (first == false)) {
            FocusScope.of(context).previousFocus();
          } else if ((value.length == 1) && (last == true)) {
            FocusScope.of(context).unfocus();
          } */
        },
      ),
    );
  }
}
