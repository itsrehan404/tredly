import 'package:get/get.dart';



class HomeController extends GetxController {
 List items = [
  {
   'img': 'assets/categories/beverages/img.png',
   'title': 'Strawberry Punch',
   'price': '25',
  },
  {
   'img': 'assets/categories/beverages/img_1.png',
   'title': 'Lemonade',
   'price': '15',
  },
  {
   'img': 'assets/categories/beverages/img_2.png',
   'title': 'Chocolate Bakery',
   'price': '10',
  },
  {
   'img': 'assets/categories/beverages/img_3.png',
   'title': 'Whisky',
   'price': '22',
  },
  {
   'img': 'assets/categories/beverages/img_4.png',
   'title': 'Chocolate Bakery',
   'price': '30',
  },
  {
   'img': 'assets/categories/beverages/img_5.png',
   'title': 'Fruit Punch',
   'price': '15',
  },
  {
   'img': 'assets/categories/breadBakery/img.png',
   'title': 'Bread Chocolate',
   'price': '25',
  },
  {
   'img': 'assets/categories/breadBakery/img_1.png',
   'title': 'Circle Bakery',
   'price': '15',
  },
  {
   'img': 'assets/categories/breadBakery/img_2.png',
   'title': 'Cookies',
   'price': '10',
  },
  {
   'img': 'assets/categories/breadBakery/img_3.png',
   'title': 'Long Bread',
   'price': '15',
  },
  {
   'img': 'assets/categories/breadBakery/img_4.png',
   'title': 'Donut',
   'price': '30',
  },
  {
   'img': 'assets/categories/breadBakery/img_5.png',
   'title': 'Bread',
   'price': '15',
  },
 ];
 List<bool> isFavorite = [];

 @override
 void onInit() {
  super.onInit();
  isFavorite = List.generate(items.length, (index) => false);
 }

 void toggleFavorite(int index) {
  isFavorite[index] = !isFavorite[index];
  update();
 }
 void removeFromFavorite(Map<String, dynamic> data) {
  int itemIndex = items.indexOf(data);
  isFavorite[itemIndex] = false;
  update();
 }
}