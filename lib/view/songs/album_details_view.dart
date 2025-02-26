import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:music_player/common/color_extension.dart';
import 'package:music_player/common_widgets/album_songs_row.dart';
import 'package:music_player/view_model/albums_view_model.dart';
import 'package:music_player/view_model/splash_view_model.dart';

class AlbumDetailsView extends StatefulWidget {
  const AlbumDetailsView({super.key});

  @override
  State<AlbumDetailsView> createState() => _AlbumDetailsViewState();
}

class _AlbumDetailsViewState extends State<AlbumDetailsView>
    with SingleTickerProviderStateMixin {

      final albumVM = Get.put(AlbumViewModel());

  @override
  Widget build(BuildContext context) {
    // final homeVM = Get.put(HomeViewModel());
    var size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: TColor.bg,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Image.asset(
              "assets/img/back.png",
              width: 25,
              height: 25,
              fit: BoxFit.contain,
            )),
        title: Text(
          "Album Details",
          style: TextStyle(
            color: TColor.primaryText80,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.find<SplashViewMode>().openDrawer();
              },
              icon: Image.asset(
                "assets/img/search.png",
                width: 25,
                height: 25,
                color: TColor.primaryText60,
                fit: BoxFit.contain,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(alignment: Alignment.center, children: [
              //-----------GG blur image ------------//
              ClipRect(
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Image.asset(
                    "assets/img/alb_1.png",
                    width: double.maxFinite,
                    height: size.width * 0.5,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                color: Colors.black45,
                width: double.maxFinite,
                height: size.width * 0.5,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    //-----------GG image not blur------------//

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/img/alb_1.png",
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 15,
                        ),

                        //----------- Details in columns ------------//

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "History",
                                style: TextStyle(
                                  color: TColor.primaryText.withOpacity(0.9),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "By Michael Jackson",
                                style: TextStyle(
                                  color: TColor.primaryText.withOpacity(0.9),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "1996 . 18 Songs . 64 min",
                                style: TextStyle(
                                  color: TColor.primaryText.withOpacity(0.9),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
         //----------- Play Button ------------//
                        InkWell(
                          borderRadius: BorderRadius.circular(18),
                          onTap: () {},
                          child: Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: TColor.primaryG,
                                begin: Alignment.topCenter,
                                end: Alignment.center,
                              ),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  "assets/img/play_n.png",
                                  width: 20,
                                  height: 20,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Play",
                                  style: TextStyle(
                                    color: TColor.primaryText.withOpacity(0.9),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
//----------------share ------------------//

                        InkWell(
                          borderRadius: BorderRadius.circular(18),
                          onTap: () {},
                          child: Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: TColor.primaryText, width: 1),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  "assets/img/share.png",
                                  width: 15,
                                  height: 15,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Share",
                                  style: TextStyle(
                                    color: TColor.primaryText.withOpacity(0.75),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
//----------------Add to fav ------------------//
                          InkWell(
                          borderRadius: BorderRadius.circular(18),
                          onTap: () {},
                          child: Container(
                            width: 130,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: TColor.primaryText, width: 1),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  "assets/img/fav.png",
                                  width: 15,
                                  height: 15,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Add to Favorites",
                                  style: TextStyle(
                                    color: TColor.primaryText.withOpacity(0.75),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ]),


//-----------List of songs ---------------//
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10),
                  // scrollDirection: Axis.horizontal,
                  itemCount: albumVM.playedArr.length,
                  itemBuilder: (context, index) {
                    var sObj = albumVM.playedArr[index];
                    return AlbumSongsRow(
                      sObj: sObj,
                      onPressedPlay: () {},
                      onPressed: () {}, 
                      isPlay: index == 0 ,
                    );
                  }),
             ),
          ],
        ),
      ),
    );
  }
}
