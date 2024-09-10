import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tredly/utils/app_colors.dart';
import 'package:tredly/utils/text_style.dart';
import 'package:tredly/widgets/custom_button.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HeadingTwo(data: 'Order History'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0).r,
            child: Row(
              children: [
                Icon(Icons.favorite,color: Colors.white,),
                SizedBox(width: 5,),
                Icon(CupertinoIcons.cart_fill,color: Colors.white,),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                HeadingFour(data: 'Transactions'),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: HeadingThree(data: 'January 2024',backGroundColor: AppColors.primaryColor.withOpacity(0.3),color: AppColors.primaryColor,),
                ),

              ],
            ),
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context, index) {
              return Card(
                color: Colors.white,
                child: ListTile(
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(5).r,
                      child: Image(image: AssetImage('assets/categories/beverages/img_5.png'))),
                  title: HeadingFour(data: 'Fruit Punch'),
                  subtitle: HeadingThree(data: '25',color: AppColors.primaryColor,),
                  trailing:index==0? CustomElevatedButton(onPressed: (){}, buttonText: 'Delivered',textColor: Colors.white,buttonColor: AppColors.primaryColor,):
                CustomElevatedButton(onPressed: (){}, buttonText: 'Order Placed',textColor: AppColors.primaryColor,buttonColor: Colors.white,borderColor: AppColors.primaryColor,),
                ),
              );
            },)
          ],
        ),
      ),
    );
  }
}
