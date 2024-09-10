import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tredly/controller/list_controller.dart';
import 'package:tredly/utils/text_style.dart';
import 'package:tredly/views/Home%20Screen/categories/product_details.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {


    return GetBuilder<ListController>(builder: (controller) {
      return GridView.builder(
        shrinkWrap: true,
        primary: false,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          // childAspectRatio: 0.7,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        itemCount: controller.item.length,
        itemBuilder: (context, index) {
          final data=controller.item[index];
          return GestureDetector(
            onTap: () {
             // Get.to(ProductDetails(items: items[index]['items'],data: items[index]['title'],));
              Get.to(ProductDetails(items:data['items'] , data: data['title']));
            },
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(data['img']),
                      fit: BoxFit.cover)),
              child: Center(
                child: HeadingTwo(data: data['title']),
              ),
            ),
          );
        },
      );
    },);
  }
}

