import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  final txtSearch = TextEditingController().obs;

  final hostRecommendedArr = [
    {
      "image": "assets/img/img_1.png",
      "name": "Sound of Sky",
      "artists": "Dilon Bruce"
    },
    {
      "image": "assets/img/img_2.png",
      "name": "Girl on Fire",
      "artists": "Alecia Keys"
    },
     {
      "image": "assets/img/img_3.png",
      "name": "Classic Playlist",
      "artists": "Piano Guys"
    },
    {
      "image": "assets/img/img_5.png",
      "name": "Pop Music",
      "artists": "Michael Jackson"
    }
  ].obs;

  final playListArr = [
   
    {
      "image": "assets/img/img_5.png",
      "name": "Pop Music",
      "artists": "Michael Jackson"
    },
    {
      "image": "assets/img/img_1.png",
      "name": "Sound of Sky",
      "artists": "Dilon Bruce"
    },
     {
      "image": "assets/img/img_3.png",
      "name": "Classic Playlist",
      "artists": "Piano Guys"
    },
    {
      "image": "assets/img/img_4.png",
      "name": "Summer Playlist",
      "artists": "Dilon Bruce"
    },
  ];

  final recentlyPlayedArr = [
    {
      "image": "assets/img/img_5.png",
      "name": "Pop Music",
      "artists": "Michael Jackson"
    },
    {
      "image": "assets/img/img_3.png",
      "name": "Classic Playlist",
      "artists": "Piano Guys"
    },
    {
      "image": "assets/img/img_4.png",
      "name": "Summer Playlist",
      "artists": "Dilon Bruce" 
    },
    {
      "image": "assets/img/img_5.png",
      "name": "Pop Music",
      "artists": "Michael Jackson"
    }
  ].obs;
}
