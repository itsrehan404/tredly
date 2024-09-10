
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tredly/controller/auth_controller.dart';
import 'package:tredly/widgets/custom_button.dart';

import '../../routes/routes_names.dart';
import '../../utils/app_colors.dart';
import '../../utils/text_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _key = GlobalKey<FormState>();
  final bool _obscureText = true;
  final AuthController authController = Get.put(AuthController());

  @override
  void initState() {
    super.initState();
    authController.fetchAlbum();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30).r,
        child: Form(
          key: _key,
          child: GetBuilder<AuthController>(builder: (controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HeadingTwo(data: controller.albumTitle ?? 'Welcome to Tredly', fontSize: 30),
                    const SizedBox(
                      height: 80,
                    ),
                    const HeadingThree(
                      data: 'Login to your account',
                      fontSize: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                TextFormField(
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: '  Email/Mobile Number',
                      hintStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w400),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(50),
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your Email";
                    } else if (!value.contains('@')) {
                      return "Invalid Email";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  obscureText: _obscureText,
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      hintText: '  Password',
                      hintStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w400),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(50),
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your password";
                    } else if (value.length < 8) {
                      return "password invalid";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50.h,
                  child: CustomElevatedButton(onPressed: (){
                    Get.offAllNamed(RouteNames.customNavBar);
                  }, buttonText: 'Login'),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextButton(onPressed: (){

                }, child: const HeadingTwo(data: 'Forgot your password?')),
                SizedBox(
                  height: 20.h,
                ),
                TextButton(onPressed: (){
                  Get.toNamed(RouteNames.singUpScreen);
                }, child: const HeadingTwo(data: 'Don’t have an account? Sign up'))
              ],
            );
          },),





        ),
      ),
    );
  }
}
