import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tredly/utils/app_colors.dart';

import 'package:tredly/widgets/custom_button.dart';

import '../utils/text_style.dart';
import '../views/Cart Screen/my_cart.dart';

class DetailScreen extends StatelessWidget {
  final String img;
  final String title;
  final String price;
  const DetailScreen(
      {super.key, required this.img, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    img,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.white,
                        ),
                        style: IconButton.styleFrom(
                            backgroundColor: Colors.white.withOpacity(0.2)),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.share,
                              color: Colors.white,
                            ),
                            style: IconButton.styleFrom(
                                backgroundColor: Colors.white.withOpacity(0.2)),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                            style: IconButton.styleFrom(
                                backgroundColor: Colors.white.withOpacity(0.2)),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                            style: IconButton.styleFrom(
                                backgroundColor: Colors.white.withOpacity(0.2)),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadingTwo(
                        data: title,
                        color: Colors.black,
                        fontSize: 25,
                      ),
                      Row(
                        children: [
                          HeadingTwo(
                            data: '৳ $price',
                            color: AppColors.primaryColor,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const HeadingThree(
                            data: '50% off',
                            color: Colors.black,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                                child: HeadingTwo(
                              data: 'T',
                              fontSize: 30,
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const HeadingTwo(
                            data: 'Tradly Store',
                            color: Colors.black,
                          )
                        ],
                      ),
                      CustomElevatedButton(
                        onPressed: () {},
                        buttonText: 'Follow',
                        buttonColor: AppColors.primaryColor,
                        textColor: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: HeadingThree(
                    data:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomElevatedButton(
          onPressed: () {
            Get.bottomSheet(
              backgroundColor: Colors.white,
              SizedBox(
                height: 380,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Condition',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Organic'),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Price Type',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Fixed'),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text(
                          'Category',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                        Text('Beverages'),
                      ],),
                      const SizedBox(height: 10.0),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Location',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),

                          Text('Kualalumpur, Malaysia'),
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      const Text(
                        'Additional Details',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        'Delivery Details',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8.0),
                      const Text('Home Delivery Available,'),
                      const SizedBox(height: 8.0),
                      const Text('Cash On Delivery'),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity,
                        child: CustomElevatedButton(
                          onPressed: () {
                            Get.snackbar('Success',
                                'Buying',
                                colorText: Colors.white,
                                backgroundColor: AppColors.primaryColor);
                           Get.to(MyCart(img: img, name: title, price: price));

                          },
                          buttonText: 'Buy Now',
                          buttonColor: AppColors.primaryColor,
                          textColor: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          buttonText: 'Add to cart',
          buttonColor: AppColors.primaryColor,
          textColor: Colors.white,
        ),
      ),
    );
  }
}
