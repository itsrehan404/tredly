import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tredly/utils/app_colors.dart';

import '../utils/text_style.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Color? buttonColor;
  final Color? textColor;
  final Color? borderColor;
  final double? fontSize;

  const CustomElevatedButton({
    super.key,
    // default height
    required this.onPressed,
    required this.buttonText,
    this.buttonColor,
    this.textColor,
    this.borderColor,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor ?? Colors.white,
        side: BorderSide(color: borderColor ?? Colors.white, width: 1),
      ),
      child: HeadingTwo(
        data: buttonText,
        color: textColor ?? AppColors.buttonTextColors,
        fontSize: fontSize ?? 18.sp,
      ),
    );
  }
}


class CustomIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;


  final double? fontSize;
  final IconData icon;

  const CustomIconButton({
    super.key,
    // default height
    required this.onPressed,
    required this.buttonText,

    this.fontSize, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: const BorderSide(  color:  Colors.white, width: 1),
      ),
      icon: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,).r,
        child: Row(
          children: [
            Icon(icon,color: Colors.white,),
            const SizedBox(width: 5,),
            HeadingTwo(
              data: buttonText,
              color: Colors.white,
              fontSize: fontSize ?? 14.sp,
            )
          ],
        ),
      ),

    );
  }
}
