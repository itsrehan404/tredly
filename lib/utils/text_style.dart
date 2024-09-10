
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class HeadingTwo extends StatelessWidget {
  final String data;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final Color? backGroundColor;
   final bool? isTrue ;
  const HeadingTwo({
    super.key, required this.data, this.fontWeight, this.fontSize, this.color, this.backGroundColor, this.isTrue,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      maxLines: 1,
      style: TextStyle(
        color: color ?? AppColors.textColors,
        fontSize: fontSize ??  18.sp,
        fontWeight: fontWeight?? FontWeight.w500,
        backgroundColor: backGroundColor,
        decoration:isTrue==true? TextDecoration.underline:TextDecoration.none,
        overflow: TextOverflow.ellipsis,
      ),

    );
  }
}

class HeadingThree extends StatelessWidget {
  final String data;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final Color? backGroundColor;
  const HeadingThree({
    super.key, required this.data, this.fontWeight, this.fontSize, this.color, this.backGroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: color ?? AppColors.textColors,
        fontSize: fontSize ??  16.sp,
        fontWeight: fontWeight?? FontWeight.w400,
        backgroundColor: backGroundColor,

      ),
    );
  }
}

class HeadingFour extends StatelessWidget {
  final String data;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final Color? backGroundColor;
  final bool? isTrue ;
  const HeadingFour({
    super.key, required this.data, this.fontWeight, this.fontSize, this.color, this.backGroundColor, this.isTrue,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      maxLines: 2,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: fontSize ??  18.sp,
        fontWeight: fontWeight?? FontWeight.w500,
        backgroundColor: backGroundColor,
        decoration:isTrue==true? TextDecoration.underline:TextDecoration.none,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}