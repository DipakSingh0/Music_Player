import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:music_player/common/color_extension.dart';
import 'package:music_player/view/songs/album_view.dart';
import 'package:music_player/view/songs/all_songs_view.dart';
import 'package:music_player/view/songs/playlists_view.dart';
import 'package:music_player/view_model/splash_view_model.dart';

class SongsView extends StatefulWidget {
  const SongsView({super.key});

  @override
  State<SongsView> createState() => _SongsViewState();
}

class _SongsViewState extends State<SongsView> with SingleTickerProviderStateMixin{
  TabController? controller;
  int selectTab = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 5, vsync: this);
    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    // final homeVM = Get.put(HomeViewModel());

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: TColor.bg,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.find<SplashViewMode>().openDrawer();
              },
              icon: Image.asset(
                "assets/img/menu.png",
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              )),
          title: Text(
            "Songs",
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
        body: Column(
          children: [
            SizedBox(
              height: kToolbarHeight ,
              child: TabBar(
                isScrollable: true,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
                controller: controller,
                indicatorColor: TColor.focus,
                labelStyle: TextStyle(
                  color: TColor.focus,
                  fontSize: 15 ,
                  fontWeight: FontWeight.w700,
                ),
                unselectedLabelStyle: TextStyle(
                  color: TColor.primaryText60,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
                tabs: const [
                  Tab(
                    text: "All Songs",
                    // height: 25,
                  ),
                  Tab(
                    text: "Playlists",
                    // height: 25,

                  ),
                  Tab(
                    text: "Albums",
                    // height: 25,

                  ),
                  Tab(
                    text: "Artists",
                    // height: 25,

                  ),
                  Tab(
                    text: "Geners",
                    // height: 25,

                  ),
                ],
              ),
            ),
         
          Expanded(
            child: TabBarView(
              controller: controller,
              children: [
                const AllSongsView(),
                const PlaylistsView(),
                const AlbumsView(),
                const Center(child: Text("Artists")),
                const Center(child: Text("Generes")),

                
            ]),
          )

          ],
        ));
  }
}
