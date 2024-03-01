import 'package:button/widget/fil_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginSceern extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => LoginSceern());

  const LoginSceern({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: Scaffold(
        body:
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 35),
                Image.asset("assets/image/image.png"),
                SizedBox(height: 35.h),
                Text("Log in",style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                  color: Color(0xff000000)
                ),),
                SizedBox(height: 18.h),
                FilWidget(hintText: "Phone number", icon: Icon(Icons.phone),),
                SizedBox(height: 6.h),
                FilWidget(hintText: "Password", icon: Icon(Icons.lock),),
                SizedBox(height: 10.h),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 390.w,
                    height: 52.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                        colors: [Color(0xff6BC4FF),Color(0xff0075FF)]
                      )
                    ),
                    child: Center(
                      child: Text("Sing in",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      
      ),
    );
  }
}
