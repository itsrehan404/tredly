import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tredly/utils/text_style.dart';

import '../../routes/routes_names.dart';
import '../../utils/app_colors.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  final List<Map<String, dynamic>> onboardingData = [
    {
      'image': 'assets/images/img_1.png',
      'description': 'Empowering Artisans, Farmers & Micro Business',
      'button': 'Next'
    },
    {
      'image': 'assets/images/img_2.png',
      'description': 'Connecting NGOs, Social Enterprises with Communities',
      'button': 'Next'
    },
    {
      'image': 'assets/images/img_3.png',
      'description': ' Donate, Invest & Support infrastructure projects',
      'button': 'Finish'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  color: AppColors.primaryColor,
                ),
              ),
              Expanded(
                child: Container(
                  color: AppColors.backGroundColors,
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(25).r,
              child: Container(
                margin: const EdgeInsets.only(top: 150).h,
                height: 700.h,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(10).r),
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20).r,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(onboardingData[currentIndex]['image']),
                            const SizedBox(height: 30),
                            Text(
                              onboardingData[currentIndex]['description'],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 25.sp,
                                  color: AppColors.buttonTextColors),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20).w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(onboardingData.length, (index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentIndex = index;
                                });
                              },
                              child: AnimatedContainer(

                                margin: const EdgeInsets.all(7).r,
                                duration: const Duration(milliseconds: 300),
                                height: 8,
                                width: currentIndex == index ? 20 : 8,
                                decoration: BoxDecoration(
                                  color: currentIndex == index
                                      ? AppColors.primaryColor
                                      : AppColors.primaryColor.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(50).r,
                                ),
                              ),
                            );
                          }),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20).w,
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primaryColor,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 40).r,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50).r),
                            ),
                            onPressed: () {
                              if (currentIndex == onboardingData.length - 1) {
                                Get.toNamed(RouteNames.loginScreen);
                              } else {
                                setState(() {
                                  currentIndex =
                                      (currentIndex + 1) % onboardingData.length;
                                });
                              }
                            },
                            child: HeadingTwo(data: onboardingData[currentIndex]['button'])),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}