import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../utils/text_style.dart';
import '../../../widgets/custom_button.dart';
class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> item = [{'img': 'assets/images/img_4.png'}];
    return CarouselSlider.builder(
      itemCount: item.length,
      itemBuilder: (context, index, realIndex) {
        return Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                item[index]['img'],
                fit: BoxFit.cover,
                height: 300.h,
                width: double.infinity,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     HeadingTwo(
                      data: 'Ready to deliver to\n your home',
                      fontSize: 16.sp,
                    ),
                     SizedBox(
                      height: 5.h,
                    ),
                    CustomElevatedButton(
                      onPressed: () {},
                      buttonText: 'Start Shopping',
                      buttonColor: Colors.transparent,
                      textColor: Colors.white,
                      fontSize: 14.sp,
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      },
      options: CarouselOptions(
        height: 250.h,
        aspectRatio: 4 / 3,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: false,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}