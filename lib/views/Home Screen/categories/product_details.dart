import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tredly/widgets/custom_button.dart';
import 'package:tredly/widgets/details.dart';
import 'package:tredly/widgets/product_tile.dart';

import '../../../utils/app_colors.dart';

class ProductDetails extends StatelessWidget {
  final String data;
  final List<dynamic> items;

  const ProductDetails({super.key, required this.items, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          data,
          style:  TextStyle(
              color: Colors.white, fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(8.0).r,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomIconButton(
                  onPressed: () {},
                  buttonText: 'Sort By',
                  icon: Icons.filter_list,
                ),
                CustomIconButton(
                  onPressed: () {},
                  buttonText: 'Location',
                  icon: Icons.location_on,
                ),
                CustomIconButton(
                  onPressed: () {},
                  buttonText: 'Category',
                  icon: Icons.storage,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            primary: false,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              mainAxisSpacing: 4,
              crossAxisSpacing: 2,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Get.to(DetailScreen(
                      img: items[index]['img'],
                      title: items[index]['title'],
                      price: items[index]['price'],
                    ));
                  },
                  child: ProductTile(
                    img: items[index]['img'],
                    title: items[index]['title'],
                    price: items[index]['price'],
                  ));
            },
          ),
        ),
      ),
    );
  }
}
