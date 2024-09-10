import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tredly/utils/text_style.dart';
import 'package:tredly/views/Payment%20Screen/payment_success.dart';



import '../../utils/app_colors.dart';
import '../../widgets/custom_button.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int _selectedPaymentOption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HeadingTwo(data: 'Payment Options'),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20).r,
              child: Column(
                children: [
                  ListTile(
                    title: const HeadingThree(data: 'Debit / Credit Card',color: Colors.black,),
                    leading: Radio(
                      value: 0,
                      groupValue: _selectedPaymentOption,
                      onChanged: (value) {
                        setState(() {
                          _selectedPaymentOption = value as int;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    title: const HeadingThree(data: 'Netbanking',color: Colors.black,),
                    leading: Radio(
                      value: 1,
                      groupValue: _selectedPaymentOption,
                      onChanged: (value) {
                        setState(() {
                          _selectedPaymentOption = value as int;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    title: const HeadingThree(data: 'Cash on Delivery',color: Colors.black,),
                    leading: Radio(
                      value: 2,
                      groupValue: _selectedPaymentOption,
                      onChanged: (value) {
                        setState(() {
                          _selectedPaymentOption = value as int;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    title: const HeadingThree(data: 'wallet',color: Colors.black,),
                    leading: Radio(
                      value: 3,
                      groupValue: _selectedPaymentOption,
                      onChanged: (value) {
                        setState(() {
                          _selectedPaymentOption = value as int;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20,),

          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HeadingThree(data: 'Deliver to Tredly Team,75119',color: Colors.black,),
                      HeadingThree(data: 'Dhaka, bangladesh',color: Colors.black.withOpacity(0.7),),
                    ],
                  ),
                  CustomElevatedButton(onPressed: (){}, buttonText: 'Change',buttonColor: AppColors.primaryColor,textColor: Colors.white,)
                ],
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],

            ),
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadingTwo(data: 'Product Details',color: Colors.black,fontSize: 20,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeadingThree(data: 'Price(1 Item)',color: Colors.black,),
                      HeadingThree(data: '৳ 25',color: Colors.black,),
                    ],
                  ),
                  SizedBox(height: 3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeadingThree(data: 'Delivery Fee',color: Colors.black,),
                      HeadingThree(data: 'Info',color: Colors.black,),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeadingTwo(data: 'Total Amount',color: Colors.black,fontSize: 20,),
                      HeadingTwo(data: '৳ 25',color: Colors.black,fontSize: 20,),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15),
        child: CustomElevatedButton(onPressed: (){
          Get.to(const PaymentSuccess());
        }, buttonText: 'CheckOut',textColor: Colors.white,buttonColor: AppColors.primaryColor,),
      ),
    );
  }
}