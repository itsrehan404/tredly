import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tredly/controller/home_controller.dart';
import 'package:tredly/utils/text_style.dart';
import 'package:tredly/widgets/custom_button.dart';
import 'package:tredly/widgets/product_tile.dart';

class FavouriteScreen extends StatelessWidget {
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HeadingTwo(data: 'Favourite Items'),
      ),
      body: GetBuilder<HomeController>(
        builder: (controller) {
          List favoriteItems = controller.items
              .where((item) =>
          controller.isFavorite[controller.items.indexOf(item)])
              .toList();

          return favoriteItems.isEmpty
              ? const Center(
              child: HeadingTwo(
                data: 'No favourite items',
                color: Colors.black,
              ))
              : Padding(
            padding: const EdgeInsets.all(8.0).r,
            child: Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                primary: false,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 2,
                ),
                itemCount: favoriteItems.length,
                itemBuilder: (context, index) {
                  final data = favoriteItems[index];
                  return Stack(
                    children: [
                      ProductTile(
                        img: data['img'],
                        title: data['title'],
                        price: data['price'],
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            icon: Icon(Icons.delete,color: Colors.red,size: Get.height *.035,),
                            onPressed: () {

                              Get.defaultDialog(
                                title: 'Alert !!',
                                content: const HeadingTwo(data: 'Do you want to Delete It??', color: Colors.black,),

                                cancel: CustomElevatedButton(onPressed: (){
                                  Get.back();
                                }, buttonText: 'No',borderColor: Colors.black.withOpacity(0.1),),
                                confirm: CustomElevatedButton(onPressed: (){controller.removeFromFavorite(data);
                                Get.back();}, buttonText: "Yes",buttonColor: Colors.red,textColor: Colors.white,borderColor: Colors.transparent,)
                              );

                             // controller.removeFromFavorite(data);
                            },
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}