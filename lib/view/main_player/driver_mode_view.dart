import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/common/color_extension.dart';
import 'package:music_player/view/main_player/play_playlist_view.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class DriverModeView extends StatefulWidget {
  const DriverModeView({super.key});

  @override
  State<DriverModeView> createState() => _DriverModeViewState();
}

class _DriverModeViewState extends State<DriverModeView> {
  // final customWidth =
  //     CustomSliderWidths(trackWidth: 4, progressBarWidth: 6, shadowWidth: 8);

  var sliderVal = 0.7;

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
              "assets/img/close.png",
              width: 20,
              height: 20,
              fit: BoxFit.contain,
            )),
        title: Text(
          "Driver Mode",
          style: TextStyle(
            color: TColor.primaryText80,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
        
          IconButton(
              onPressed: () {
                Get.to(() =>PlayPlaylistView());
              },
              icon: Image.asset(
                "assets/img/playlist.png",
                width: 24,
                height: 24,
                color: TColor.primaryText60,
                fit: BoxFit.contain,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 16,
            ),
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
               Container(
                  width: size.width * 0.4,
                  height: size.width * 0.4,
                  decoration: BoxDecoration(
                    border: Border.all(color: TColor.primaryText28, width: 2),
                    borderRadius: BorderRadius.circular(size.width * 0.2),
                  ), // BoxDecoration
                ), // Container
                // SizedBox(
                //   width: size.width * 0.55,
                //   height: size.width * 0.55,
                //   child: SleekCircularSlider(
                //     appearance: CircularSliderAppearance(
                //         customWidths: CustomSliderWidths(
                //             trackWidth: 4, progressBarWidth: 8, shadowWidth: 8),
                //         // customWidths: customWidth,
                //         customColors: CustomSliderColors(
                //           dotColor: const Color(0xffFFB182),
                //           trackColor: const Color(0xffffffff),
                //           progressBarColors: [
                //             const Color(0xffFB9967),
                //             const Color(0xffE9585A)
                //           ],
                //           shadowColor: const Color(0xffFFB182),
                //           shadowMaxOpacity: 0.05,
                //         ),
                //         infoProperties: InfoProperties(
                //           topLabelStyle: const TextStyle(
                //             color: Colors.transparent,
                //             fontSize: 16,
                //             fontWeight: FontWeight.w400,
                //           ),
                //           topLabelText: 'Elapsed',
                //           bottomLabelStyle: const TextStyle(
                //             color: Colors.transparent,
                //             fontSize: 16,
                //             fontWeight: FontWeight.w400,
                //           ),
                //           bottomLabelText: 'time',
                //           mainLabelStyle: const TextStyle(
                //             color: Colors.transparent,
                //             fontSize: 16,
                //             fontWeight: FontWeight.w400,
                //           ),
                //           // topLabelText: 'Elapsed',
                //         )),
                //     min: 0,
                //     max: 1000,
                //     initialValue: 50,
                //     onChange: (double value) {
                //       // callback providing a value while its being changed (with a pan gesture)
                //     },
                //     onChangeStart: (double startValue) {
                //       // callback providing a starting value (when a pan gesture starts)
                //     },
                //     onChangeEnd: (double endValue) {
                //       // ucallback providing an ending value (when a pan gesture ends)
                //     },
                //     // innerWidget: (double value) {
                //     // },
                //   ),
                // ),
          
              ],
            ),
          
            const SizedBox(
              height: 50,
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
              height: 10,
            ),
            Text(
              "Michale Jackson | Album-Dangerous",
              style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
             const SizedBox(
              height: 10,
            ),
            Text(
              "246/580",
              style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            Slider(
              value: sliderVal, 
              activeColor: TColor.focus,
              inactiveColor: TColor.primaryText28,
              onChanged: 
            (newValue){
              setState(() {
                sliderVal = newValue;
              });
            }),


            const SizedBox(
              height: 30,
            ),

             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "3:35",
                    style: TextStyle(color: TColor.primaryText60, fontSize: 12),
                  ), // Text
                  Text(
                    "4:26",
                    style: TextStyle(color: TColor.primaryText60, fontSize: 12),
                  ), // Text
                ],
              ), // Row
            ), //
            const SizedBox(
              height: 35,
            ), 
          
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/img/previous_song.png",
                        )),
                  ),
                 
                 
                  SizedBox(
                    width: 70,
                    height: 70,
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/img/play.png",
                        )),
                  ),
                  // const SizedBox(
                  //   width: 15,
                  // ),
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/img/next_song.png",
                        )),
                  ),
                ],
              ),
            ),
       
          ],
        ),
      ),
    );
  }
}
