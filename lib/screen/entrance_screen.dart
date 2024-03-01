import 'package:button/screen/login_sceern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EntranceScreen extends StatefulWidget {

  static route() =>
      MaterialPageRoute(builder: (context) => EntranceScreen());

  EntranceScreen({Key? key}) : super(key: key);

  @override
  State<EntranceScreen> createState() => _EntranceScreenState();
}

class _EntranceScreenState extends State<EntranceScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 141.h,),
            Text("Choose your",style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20.sp,
              color: Color(0xff141416)
            ),),
            Text("Sign in",style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 40.sp,
                color: Color(0xff141416)
            ),),
            Text("Select login method",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
                color: Color(0xff353945)
            ),),
            SizedBox(height: 75.h,),
            _buttonLoginMethod(title: "Facebook", image: "assets/image/fecebook_icon.png", index: 1),
            SizedBox(height: 12.h),
            _buttonLoginMethod(title: "Google", image: "assets/image/google_icon.png", index: 2),
            SizedBox(height: 12.h),
            _buttonLoginMethod(title: "Apple", image: "assets/image/apple_icon.png", index: 3),
            SizedBox(height: 75.h),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        const LoginSceern()));
              },
              child: Container(
                width: 200.w,
                height: 56.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xff1F41F4),
                ),
                child: Center(
                  child: Text("Next",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                  ),),
                ),
              ),
            )
          ],
        ),
      ),

    );
  }

  _buttonLoginMethod({required String title, required String image, required int index}){
    return GestureDetector(
      onTap: ()=>setState(()=>currentIndex = index),
      child: Container(
width: 336.w,
        height: 104.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: currentIndex == index? Color(0xff1F41F4) : Color(0xffF4F5F6)),
            color: currentIndex == index? Color(0x1a3772ff) : Color(0xffF4F5F6)
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 56.w,
                height: 56.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                    color: currentIndex == index? Color(0xff1F41F4) : Color(0xffFE6E8EC)
                ),
                child: Center(child: Image.asset(image,color: currentIndex == index? Color(0xffFFFFFF) : Color(0xff141416))),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if(currentIndex == index)(
                  Column(
                    children: [
                      Text("Use",style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1F41F4)
                      ),),
                      SizedBox(height: 4,)
                    ],
                  )
                  ),
                  Text(title,style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                      color: currentIndex == index? Color(0xff1F41F4) : Color(0xff141416)
                  ),)
                ],
              ),
              SizedBox(width: 1.w,),
              Container(
                width: 56.w,
                height: 56.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                    color: currentIndex == index? Color(0x1a3772ff) : Color(0xffF4F5F6)
                ),
                child: Center(
                  child: Container(
                    width: 19.w,
                    height: 19.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all( color: currentIndex == index? Color(0xff1F41F4) : Color(0xffB1B5C3))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if(currentIndex == index)(
                        Container(
                          width: 12.w,
                          height: 12.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xff1F41F4)
                          ),
                        )
                        )
                      ],
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}


