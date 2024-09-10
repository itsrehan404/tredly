import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tredly/routes/routes_names.dart';
import 'package:tredly/utils/app_colors.dart';

import 'controller/bindings.dart';
import 'routes/routes_pages.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: AppColors.primaryColor,
            ),
          ),
          debugShowCheckedModeBanner: false,
          getPages: RoutePages.routes,
          initialRoute: RouteNames.splashScreen,
          initialBinding: ControllerBindings(),
        );
      },
    );
  }
}
