import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/common/color_extension.dart';
import 'package:music_player/common_widgets/album_songs_row.dart';
import 'package:music_player/common_widgets/artist_album_cell.dart';
import 'package:music_player/common_widgets/view_all_section.dart';
import 'package:music_player/view_model/artists_view_model.dart';
import 'package:music_player/view_model/splash_view_model.dart';

class ArtistsDetailsView extends StatefulWidget {
  const ArtistsDetailsView({super.key});

  @override
  State<ArtistsDetailsView> createState() => _ArtistsDetailsViewState();
}

class _ArtistsDetailsViewState extends State<ArtistsDetailsView>
    with SingleTickerProviderStateMixin {
  final artVM = Get.put(ArtistsViewModel());

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
          "Artists Details",
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(alignment: Alignment.center, children: [
                //-----------GG blur image ------------//
                ClipRect(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Image.asset(
                      "assets/img/artist_detail_top.png",
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Image.asset(
                          //   "assets/img/alb_1.png",
                          //   width: 100,
                          //   height: 100,
                          //   fit: BoxFit.cover,
                          // ),
                          // const SizedBox(
                          //   width: 15,
                          // ),

                          //----------- Details in columns ------------//

                          Expanded(
                            
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Dillon Bruce",
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
                                  "Pop, Rock, Funk, Heavy Metal",
                                  style: TextStyle(
                                    color: TColor.primaryText.withOpacity(0.9),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                // const SizedBox(
                                //   height: 8,
                                // ),
                                // Text(
                                //   "1996 . 18 Songs . 64 min",
                                //   style: TextStyle(
                                //     color: TColor.primaryText.withOpacity(0.9),
                                //     fontSize: 12,
                                //     fontWeight: FontWeight.w600,
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 35,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "5,432",
                                style: TextStyle(
                                  color: TColor.primaryText.withOpacity(0.8),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Follow",
                                style: TextStyle(
                                  color: TColor.primaryText60.withOpacity(0.74),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "1,234,550",
                                style: TextStyle(
                                  color: TColor.primaryText.withOpacity(0.8),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Listeners",
                                style: TextStyle(
                                  color: TColor.primaryText60.withOpacity(0.74),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          //----------- Follow Button ------------//
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
                                  Text(
                                    "Follow",
                                    style: TextStyle(
                                      color:
                                          TColor.primaryText.withOpacity(0.9),
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
            ),

//-----------Top Albums ---------------//
            ViewAllSection(title: "Top Albums", onPressed: () {}),

            SizedBox(
              height: 150,
              child: ListView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  scrollDirection: Axis.horizontal,
                  itemCount: artVM.albumsArr.length,
                  itemBuilder: (context, index) {
                    var artObj = artVM.albumsArr[index];
                    return ArtistAlbumCell(
                      artObj: artObj,
                    );
                  }),
            ),

            ViewAllSection(title: "Top Songs", onPressed: () {}),

//-----------List of songs ---------------//
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  // scrollDirection: Axis.horizontal,
                  itemCount: artVM.playedArr.length,
                  itemBuilder: (context, index) {
                    var sObj = artVM.playedArr[index];
                    return AlbumSongsRow(
                      sObj: sObj,
                      onPressedPlay: () {},
                      onPressed: () {},
                      isPlay: index == 0,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
