import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tredly/utils/text_style.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HeadingTwo(data: 'Payment Success'),
        leading: IconButton(onPressed: (){Get.back();}, icon:const Icon(Icons.arrow_back_outlined,color: Colors.white,) ),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage('assets/images/img_5.png',),),
            SizedBox(height: 10.h,),
            HeadingFour(data: 'Thanks for Order',fontSize: 30.sp,)
          ],
        ),
      )
      
    );
  }
}
