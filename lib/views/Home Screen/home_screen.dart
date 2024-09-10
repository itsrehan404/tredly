import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tredly/controller/home_controller.dart';
import 'package:tredly/utils/text_style.dart';
import 'package:tredly/views/Home%20Screen/categories/categories.dart';
import 'package:tredly/widgets/custom_button.dart';
import 'package:tredly/views/Home%20Screen/New%20Product/new_product.dart';
import 'package:tredly/views/Home%20Screen/New%20Product/new_product_tiles.dart';
import 'package:tredly/views/Home%20Screen/Popular%20products/popular_product_tile.dart';
import 'package:tredly/views/Home%20Screen/Popular%20products/popular_products.dart';
import 'package:tredly/views/Home%20Screen/Slider/silder.dart';

import '../../utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>
      (builder: (homeCon) {

      return Scaffold(
        appBar: AppBar(

          backgroundColor: AppColors.primaryColor,
          title:  const HeadingTwo(
            data: 'Groceries',
            fontSize: 25,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      const Icon(
                        CupertinoIcons.cart_fill,
                        color: Colors.white,
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10).r,
              child: TextFormField(
                cursorColor: Colors.white,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: '  Search Product',
                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColors.primaryColor,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(50).r,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(50).r,
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(50).r,
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(50).r,
                    )),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const CustomSlider(),
              const Padding(
                padding: EdgeInsets.only(left: 10, bottom: 10),
                child: HeadingTwo(
                  data: 'Categories',
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Categories(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const HeadingTwo(
                      data: 'New Product',
                      color: Colors.black,
                    ),
                    CustomElevatedButton(
                      onPressed: () {
                        Get.to(const NewProduct());
                      },
                      buttonText: 'see All',
                      buttonColor: AppColors.primaryColor,
                      textColor: Colors.white,
                      borderColor: Colors.transparent,
                      fontSize: 15,
                    ),
                  ],
                ),
              ),
              const NewProductTiles(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const HeadingTwo(
                      data: 'Popular Product',
                      color: Colors.black,
                    ),
                    CustomElevatedButton(
                      onPressed: () {
                        Get.to(const PopularProduct());
                      },
                      buttonText: 'See All',
                      buttonColor: AppColors.primaryColor,
                      textColor: Colors.white,
                      borderColor: Colors.transparent,
                      fontSize: 15,
                    ),
                  ],
                ),
              ),
              const PopularProductTiles(),
            ],
          ),
        ),

      );
    },);
  }
}
