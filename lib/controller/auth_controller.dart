import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/album_model.dart';

class AuthController extends GetxController {
  String? _albumTitle;

  Future<void> fetchAlbum() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

    if (response.statusCode == 200) {
      final album = Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
      _albumTitle = album.title;
      update(); // Call update to notify the GetBuilder
    } else {
      throw Exception('Failed to load album');
    }
  }

  String? get albumTitle => _albumTitle;
}