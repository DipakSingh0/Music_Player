import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/common/color_extension.dart';
import 'package:music_player/common_widgets/all_song_row.dart';
import 'package:music_player/view_model/all_songs_view_model.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class PlayPlaylistView extends StatefulWidget {
  const PlayPlaylistView({super.key});

  @override
  State<PlayPlaylistView> createState() => _PlayPlaylistViewState();
}

class _PlayPlaylistViewState extends State<PlayPlaylistView> {
  // final customWidth =
  //     CustomSliderWidths(trackWidth: 4, progressBarWidth: 6, shadowWidth: 8);

  final customColors = CustomSliderColors(
    dotColor: const Color(0xffFFB182),
    trackColor: const Color(0xffE9585A),
    progressBarColors: [const Color(0xffFB9967), const Color(0xffE9585A)],
    shadowColor: const Color(0xffFFB182),
    shadowMaxOpacity: 0.05,
  ); // CustomSliderColors

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
  final allVM = Get.put(AllSongsViewModel());


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
          "Playlist",
          style: TextStyle(
            color: TColor.primaryText80,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          PopupMenuButton<int>(
            color: const Color.fromARGB(255, 19, 20, 21),
            offset: Offset(-10, 10),
            shadowColor: Colors.black87,
            elevation: 1,
            icon: Image.asset(
              "assets/img/more_btn.png",
              width: 20,
              height: 20,
              color: Colors.white,
            ),
            padding: EdgeInsets.zero,
            onSelected: (selectedIndex) {},
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                    // padding: EdgeInsets.symmetric(horizontal: 14),
                    height: 25,
                    value: 1,
                    child:
                        Text("Social Share ", style: TextStyle(fontSize: 12))),
                const PopupMenuItem(
                    value: 2,
                    height: 25,
                    child:
                        Text("Playing Queue", style: TextStyle(fontSize: 12))),
                const PopupMenuItem(
                    value: 3,
                    height: 25,
                    child: Text("Add to playlist",
                        style: TextStyle(fontSize: 12))),
                const PopupMenuItem(
                    value: 4,
                    height: 25,
                    child: Text("Add to playlist",
                        style: TextStyle(fontSize: 12))),
                const PopupMenuItem(
                    value: 5,
                    height: 25,
                    child: Text("Lyrics", style: TextStyle(fontSize: 12))),
                const PopupMenuItem(
                    value: 6,
                    height: 25,
                    child: Text("Volume", style: TextStyle(fontSize: 12))),
                const PopupMenuItem(
                    value: 7,
                    height: 25,
                    child: Text("Details", style: TextStyle(fontSize: 12))),
                const PopupMenuItem(
                    value: 8,
                    height: 25,
                    child: Text("Sleep Timer", style: TextStyle(fontSize: 12))),
                const PopupMenuItem(
                    value: 9,
                    height: 25,
                    child: Text("Equlaizer", style: TextStyle(fontSize: 12))),
              ];
            },
          ),

      
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 14,
            ),

               Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/img/previous_song.png",
                      )),
                ),
                const SizedBox(
                  width: 15,
                ),
                // SizedBox(
                //   width: 60,
                //   height: 60,
                //   child: IconButton(
                //       onPressed: () {},
                //       icon: Image.asset(
                //         "assets/img/play.png",
                //       )),
                // ),
                  Stack(
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        "assets/img/player_image.png",
                        width: size.width * 0.4,
                        height: size.width * 0.4,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.4,
                      height: size.width * 0.4,
                      child: SleekCircularSlider(
                        appearance: CircularSliderAppearance(
                            customWidths: CustomSliderWidths(
                                trackWidth: 2,
                                progressBarWidth: 4,
                                shadowWidth: 6),
                            // customWidths: customWidth,
                            customColors: CustomSliderColors(
                              dotColor: const Color(0xffFFB182),
                              trackColor: const Color(0xffffffff),
                              progressBarColors: [
                                const Color(0xffFB9967),
                                const Color(0xffE9585A)
                              ],
                              shadowColor: const Color(0xffFFB182),
                              shadowMaxOpacity: 0.05,
                            ),
                            infoProperties: InfoProperties(
                              topLabelStyle: const TextStyle(
                                color: Colors.transparent,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                              topLabelText: 'Elapsed',
                              bottomLabelStyle: const TextStyle(
                                color: Colors.transparent,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                              bottomLabelText: 'time',
                              mainLabelStyle: const TextStyle(
                                color: Colors.transparent,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                              // topLabelText: 'Elapsed',
                            )),
                        min: 0,
                        max: 1000,
                        initialValue: 50,
                        onChange: (double value) {
                          // callback providing a value while its being changed (with a pan gesture)
                        },
                        onChangeStart: (double startValue) {
                          // callback providing a starting value (when a pan gesture starts)
                        },
                        onChangeEnd: (double endValue) {
                          // ucallback providing an ending value (when a pan gesture ends)
                        },
                        // innerWidget: (double value) {
                        // },
                      ),
                    ),
                  ],
                ),
            
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/img/next_song.png",
                      )),
                ),
              ],
            ),
           

          
            const SizedBox(
              height: 8,
            ),
            Text(
              "4:12 | 5:23",
              style: TextStyle(
                color: TColor.primaryText80,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Black or White",
              style: TextStyle(
                color: TColor.primaryText.withOpacity(0.9),
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Michale Jackson | Album-Dangerous",
              style: TextStyle(
                color: TColor.primaryText80,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),


            const SizedBox(
              height: 10,
            ),

            Obx(() => ListView.builder(
                padding: const EdgeInsets.all(20),
                itemCount: allVM.allList.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var sObj = allVM.allList[index];

                  return AllSongsRow(
                      sObj: sObj,
                      onPressed: () {},
                      onPressedPlay: () {
                        // Get.to(() => const MainPlayerView());
                      });
                })),
            // Image.asset(
            //   "assets/img/eq_display.png",
            //   height: 60,
            //   fit: BoxFit.fitHeight,
            // ),
            // const Padding(
            //   padding: EdgeInsets.all(20),
            //   child: Divider(
            //     color: Colors.white12,
            //     height: 1,
            //   ),
            // ),
         
          ],
        ),
      ),
    );
  }
}
