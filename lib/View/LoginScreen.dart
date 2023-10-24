import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:livreur/View/HomeScreen.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            children: [
              SizedBox(
                height: 173.h,
              ),
              Center(
                child: Image(
                    height:166.h ,
                    width: 251.w,
                    image: AssetImage('Assets/image 2.png'),
                ),
              ),
              SizedBox(height:30.h),
              Row(
                children : [
                  SizedBox(width:10.w),
                  AutoSizeText(
                    "Email" ,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: 'Golos',
                    ),
                  ),
                ]
              ),
              SizedBox(height: 10.h,),
              Row(
                  children : [
                    SizedBox(width:10.w),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF6F6F6),
                          borderRadius: BorderRadius.circular(9)),
                      width: 401.w,
                      height: 56.h,
                      child: Align(
                        alignment: Alignment.center,
                        child: TextFormField(
                          scrollPadding: EdgeInsets.only(bottom: 40.h),
                          textAlign: TextAlign.left,
                          style: TextStyle(fontFamily: 'Golos', fontSize: 18.sp),
                          cursorColor: Colors.grey,
                          enabled: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsetsDirectional.only(start: 11.w),
                            prefixIcon: Icon( Icons.email_rounded , size :18.h , color : Color(0xff9D9D9D) ),
                            prefixIconConstraints: BoxConstraints( maxWidth:40.w , minWidth: 30.w),

                            hintText: 'Adresse email',
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
                    SizedBox(width:10.w),
                  ]
              ),
              SizedBox(height: 30.h,),
              Row(
                  children : [
                    SizedBox(width:10.w),
                    AutoSizeText(
                      "Mot de passe" ,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: 'Golos',
                      ),
                    ),
                  ]
              ),
              SizedBox(height: 10.h,),
              Row(
                  children : [
                    SizedBox(width:10.w),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF6F6F6),
                          borderRadius: BorderRadius.circular(9)),
                      width: 401.w,
                      height: 56.h,
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
                            prefixIcon: Icon( Icons.lock_rounded , size :18.h , color : Color(0xff9D9D9D) ),
                            prefixIconConstraints: BoxConstraints( maxWidth:40.w , minWidth: 30.w),
                            hintText: 'Mot de passe',
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
                    SizedBox(width:10.w),
                  ]
              ),
              SizedBox(height: 30.h,),
              Container(
                height: 56.h,
                width: 401.w,
                child: ElevatedButton(
                  onPressed: (){
                    Get.off(HomeScreen());
                  } ,
                  child: Text(
                    'Connecter',
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
            ],
          ),
        )
    );
  }
}
