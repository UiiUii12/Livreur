import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:livreur/Controller/ChatController.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key}) : super(key: key);

  ChatController controller = Get.put(ChatController());
  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child:Scaffold (
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            SizedBox(height: 35.h,) ,
            AutoSizeText(
              "Messages" ,
              style: TextStyle(
                fontFamily: "Golos",
                fontSize: 19.sp ,
                color: Colors.black
              ),
            ),

            Row(
              children: [
                SizedBox(width: 8.w,),
                Container(
                  height: 828.h,
                  width: 413.w,
                  child: GetBuilder<ChatController>(
                    builder: (controller) {
                      return Chat(
                          theme: DefaultChatTheme(
                            inputBackgroundColor: Colors.white ,
                            inputContainerDecoration: BoxDecoration(
                              border: Border.all(color: Color(0xffF1F1F1) ,) ,
                              borderRadius: BorderRadius.circular(16.r) ,
                            ),
                            inputTextColor: Colors.black,
                            inputPadding: EdgeInsets.symmetric(vertical: 13.h ,horizontal: 18.w),
                            inputTextStyle: TextStyle(
                              fontFamily: "Golos",
                              fontSize: 13.sp ,
                              color: Colors.black
                            ),
                            primaryColor: Color(0xffE6424B) ,
                            messageBorderRadius: 16.r ,
                            messageInsetsVertical: 6.h ,
                            messageInsetsHorizontal: 12.w ,
                            sentMessageBodyTextStyle: TextStyle(
                                fontFamily: "Golos",
                                fontSize: 13.sp ,
                                color: Colors.white
                            ),
                            sendButtonIcon: Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                color: Color(0xffE8F7E5)
                              ),
                              child: Icon(Icons.send_outlined , color: Color(0xff669965), size: 18,),
                            )
                          ),
                          messages: controller.messages,
                          onSendPressed: controller.handleSendPressed,
                          user: controller.user ,

                      );
                    }
                  ),
                ),
                SizedBox(width: 7.w,),
              ],
            ),
            SizedBox(height: 10.h,),
          ],
        )
      )
    );
  }
}
