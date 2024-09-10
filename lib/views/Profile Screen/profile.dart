import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tredly/utils/app_colors.dart';

import '../../utils/text_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HeadingTwo(data: 'Profile'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0).r,
            child: const Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  CupertinoIcons.cart_fill,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
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
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15).r,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(

                  leading: Container(
                    height: 200.h,
                    width: 100.w,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.fromBorderSide(BorderSide(color: Colors.white,width: 1))
                    ),
                    child: const Center(
                      child: HeadingTwo(data: 'T'),
                    ),
                  ),
                  title:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HeadingTwo(data: 'Tradly Team'),
                      SizedBox(height: 4.h),
                      const HeadingThree(data: '+1 9998887776'),
                      SizedBox(height: 4.w),
                      const HeadingThree(data: 'info@tradly.co'),
                    ],
                  ),
                ),
                Container(
                 // height: Get.height * .4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15).r,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20).r,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HeadingFour(data: 'Edit Profile'),
                        const Divider(),
                        const HeadingFour(data: 'Language & Currency'),
                        const Divider(),
                        const HeadingFour(data: 'Feedback'),
                        const Divider(),
                        const HeadingFour(data: 'Refer a Friend'),
                        const Divider(),
                        const HeadingFour(data: 'Terms & Conditions'),
                        const Divider(),
                        HeadingFour(
                          data: 'Logout',
                          color: AppColors.primaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
