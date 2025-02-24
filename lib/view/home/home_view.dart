import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:music_player/common/color_extension.dart';
import 'package:music_player/common_widgets/playlist_cell.dart';
import 'package:music_player/common_widgets/recommended_cell.dart';
import 'package:music_player/common_widgets/songs_row.dart';
import 'package:music_player/common_widgets/title_section.dart';
import 'package:music_player/common_widgets/view_all_section.dart';
import 'package:music_player/view_model/home_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeVM = Get.put(HomeViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.bg,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/img/menu.png",
              width: 25,
              height: 25,
              fit: BoxFit.contain,
            )),
        title: Row(
          children: [
            Expanded(
              child: Container(
                height: 38,
                decoration: BoxDecoration(
                  color: const Color(0xff292E4E), // Corrected color code
                  borderRadius: BorderRadius.circular(19),
                ),
                child: TextField(
                  controller: homeVM.txtSearch.value,
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                    errorBorder: InputBorder.none,
                    prefixIcon: Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(left: 18),
                      width: 40,
                      child: Image.asset(
                        "assets/img/search.png",
                        width: 20,
                        height: 20,
                        fit: BoxFit.contain,
                        color: TColor.primaryText28,
                      ),
                    ),
                    hintText: "Search album song",
                    hintStyle: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleSection(title: "Hot Recommended"),
            SizedBox(
              height: 205,
              child: ListView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  scrollDirection: Axis.horizontal,
                  itemCount: homeVM.hostRecommendedArr.length,
                  itemBuilder: (context, index) {
                    var mObj = homeVM.hostRecommendedArr[index];
                    return RecommendedCell(mObj: mObj);
                  }),
            ),
            Divider(
              color: Colors.white.withOpacity(0.07),
              indent: 20,
              endIndent: 20,
            ),
            ViewAllSection(title: "PlayList", onPressed: () {}),
            SizedBox(
              height: 190,
              child: ListView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  scrollDirection: Axis.horizontal,
                  itemCount: homeVM.hostRecommendedArr.length,
                  itemBuilder: (context, index) {
                    var mObj = homeVM.hostRecommendedArr[index];
                    return PlaylistCell(mObj: mObj);
                  }),
            ),
            Divider(
              color: Colors.white.withOpacity(0.07),
              indent: 20,
              endIndent: 20,
            ),
            ViewAllSection(title: "Recently Played", onPressed: () {}),
            SizedBox(
              height: 190,
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  // scrollDirection: Axis.horizontal,
                  itemCount: homeVM.recentlyPlayedArr.length,
                  itemBuilder: (context, index) {
                    var sObj = homeVM.recentlyPlayedArr[index];
                    return SongsRow(
                      sObj: sObj,
                      onPressedPlay: () {},
                      onPressed: () {},
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
