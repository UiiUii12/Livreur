import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
 import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(height: 35.h,),
              AutoSizeText(
                "Profil" ,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 19.sp ,
                  fontFamily: "Golos",
                  fontWeight: FontWeight.w500 ,
                ),
              ) ,
              SizedBox(height: 32.h,),
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("Assets/profil.png"),
                radius: 50.r,
              ),
              SizedBox(height: 57.h,) ,
              Row(
                children: [
                  SizedBox(width: 23.w,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText("Nom" ,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: "Golos",
                          fontSize: 18.sp ,
                          fontWeight: FontWeight.w400 ,
                        ),
                      ) ,
                      SizedBox(height: 8.h,),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffF6F6F6),
                            borderRadius: BorderRadius.circular(9)),
                        width: 380.w,
                        height: 55.h,
                        child:
                        Align(
                          alignment: Alignment.center,
                          child: TextFormField(
                            scrollPadding: EdgeInsets.only(bottom: 40.h),
                            textAlign: TextAlign.left,
                            style: TextStyle(fontFamily: 'Golos', fontSize: 18.sp),
                            cursorColor: Colors.grey,
                            enabled: true,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsetsDirectional.only(start: 11.w),
                              prefixIcon: Icon( Icons.account_circle , size :20.h , color : Color(0xff9D9D9D) ),
                              prefixIconConstraints: BoxConstraints( maxWidth:40.w , minWidth: 30.w),
                              hintText: 'Nom',
                              hintStyle: TextStyle(
                                fontFamily: 'Golos',
                                fontSize: 18.sp,
                                color: Color(0xff9D9D9D),
                              ),
                              counterText: "",
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.transparent,
                              isCollapsed: true,
                            ),
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.done,
                            textAlignVertical: TextAlignVertical.center,

                          ),
                        ),
                      ),
                      SizedBox(height: 22.h,),
                      AutoSizeText("Prénom" ,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: "Golos",
                          fontSize: 18.sp ,
                          fontWeight: FontWeight.w400 ,
                        ),
                      ) ,
                      SizedBox(height: 8.h,),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffF6F6F6),
                            borderRadius: BorderRadius.circular(9)),
                        width: 380.w,
                        height: 55.h,
                        child:
                        Align(
                          alignment: Alignment.center,
                          child: TextFormField(
                            scrollPadding: EdgeInsets.only(bottom: 40.h),
                            textAlign: TextAlign.left,
                            style: TextStyle(fontFamily: 'Golos', fontSize: 18.sp),
                            cursorColor: Colors.grey,
                            enabled: true,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsetsDirectional.only(start: 11.w),
                              prefixIcon: Icon( Icons.account_circle , size :18.h , color : Color(0xff9D9D9D) ),
                              prefixIconConstraints: BoxConstraints( maxWidth:40.w , minWidth: 30.w),
                              hintText: 'Prénom',
                              hintStyle: TextStyle(
                                fontFamily: 'Golos',
                                fontSize: 18.sp,
                                color: Color(0xff9D9D9D),
                              ),
                              counterText: "",
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.transparent,
                              isCollapsed: true,
                            ),
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.done,
                            textAlignVertical: TextAlignVertical.center,

                          ),
                        ),
                      ),

                      SizedBox(height: 22.h,),
                      AutoSizeText("Adresse email" ,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: "Golos",
                          fontSize: 18.sp ,
                          fontWeight: FontWeight.w400 ,
                        ),
                      ) ,
                      SizedBox(height: 8.h,),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffF6F6F6),
                            borderRadius: BorderRadius.circular(9)),
                        width: 380.w,
                        height: 55.h,
                        child:
                        Align(
                          alignment: Alignment.center,
                          child: TextFormField(
                            scrollPadding: EdgeInsets.only(bottom: 40.h),
                            textAlign: TextAlign.left,
                            style: TextStyle(fontFamily: 'Golos', fontSize: 18.sp),
                            cursorColor: Colors.grey,
                            enabled: true,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsetsDirectional.only(start: 11.w),
                              prefixIcon: Icon( Icons.mail_outline , size :18.h , color : Color(0xff9D9D9D) ),
                              prefixIconConstraints: BoxConstraints( maxWidth:40.w , minWidth: 30.w),
                              hintText: 'livreur@gmail.com',
                              hintStyle: TextStyle(
                                fontFamily: 'Golos',
                                fontSize: 18.sp,
                                color: Color(0xff9D9D9D),
                              ),
                              counterText: "",
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.transparent,
                              isCollapsed: true,
                            ),
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.done,
                            textAlignVertical: TextAlignVertical.center,

                          ),
                        ),
                      ),
                      SizedBox(height: 22.h,),
                      AutoSizeText("Numéro de téléphone" ,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: "Golos",
                          fontSize: 18.sp ,
                          fontWeight: FontWeight.w400 ,
                        ),
                      ) ,
                      SizedBox(height: 8.h,),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffF6F6F6),
                            borderRadius: BorderRadius.circular(9)),
                        width: 380.w,
                        height: 55.h,
                        child:
                        Align(
                          alignment: Alignment.center,
                          child: TextFormField(
                            scrollPadding: EdgeInsets.only(bottom: 40.h),
                            textAlign: TextAlign.left,
                            style: TextStyle(fontFamily: 'Golos', fontSize: 18.sp),
                            cursorColor: Colors.grey,
                            enabled: true,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsetsDirectional.only(start: 11.w),
                              prefixIcon: Icon( Icons.phone , size :18.h , color : Color(0xff9D9D9D) ),
                              prefixIconConstraints: BoxConstraints( maxWidth:40.w , minWidth: 30.w),
                              hintText: '0664567890',
                              hintStyle: TextStyle(
                                fontFamily: 'Golos',
                                fontSize: 18.sp,
                                color: Color(0xff9D9D9D),
                              ),
                              counterText: "",
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.transparent,
                              isCollapsed: true,
                            ),
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.done,
                            textAlignVertical: TextAlignVertical.center,

                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
