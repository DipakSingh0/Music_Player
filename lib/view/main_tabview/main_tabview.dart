// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/common/color_extension.dart';
import 'package:music_player/common/icon_text_row.dart';
import 'package:music_player/view/home/home_view.dart';
import 'package:music_player/view/settings/settings_view.dart';
import 'package:music_player/view/songs/songs_view.dart';
import 'package:music_player/view_model/splash_view_model.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  int selectTab = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);

    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    var splashVM = Get.find<SplashViewMode>();

    return Scaffold(
      key: splashVM.scaffoldKey,
      drawer: Drawer(
        // backgroundColor: TColor.bg,
        backgroundColor: Color(0xff10121D),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 250,
              child: DrawerHeader(
                decoration:
                    BoxDecoration(color: TColor.primaryText.withOpacity(0.03)),
                child: Column(
                  children: [
                    Image.asset("assets/img/app_logo.png",
                        width: size.width * 0.18),
                    SizedBox(
                      height: 12,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text("526\nSongs",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xffC1C0C0), fontSize: 14))
                          ],
                        ),
                        Column(
                          children: [
                            Text("27\nAlbums",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xffC1C0C0), fontSize: 14))
                          ],
                        ),
                        Column(
                          children: [
                            Text("51\nArtists",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xffC1C0C0), fontSize: 14))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
             IconTextRow(
              title: "Themes",
              icon: "assets/img/m_theme.png",
              onTap: () {
                splashVM.closeDrawer();

              },
            ),
            // ListTile(
            //   leading: Image.asset(
            //     "assets/img/m_theme.png",
            //     width: 25,
            //     height: 25,
            //     fit: BoxFit.contain,
            //   ),
            //   title: Text("Themes",
            //       style: TextStyle(
            //           color: TColor.primaryText.withOpacity(0.9),
            //           fontSize: 15,
            //           fontWeight: FontWeight.w600)),
            //   onTap: () {
            //     splashVM.closeDrawer();
            //   },
            // ),
            Divider(color: TColor.primaryText.withOpacity(0.07), indent: 70),
            IconTextRow(
              title: "Ringtome Cutter",
              icon: "assets/img/m_ring_cut.png",
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
           
            Divider(color: TColor.primaryText.withOpacity(0.07), indent: 70),
            IconTextRow(
              title: "Sleep Timer",
              icon: "assets/img/m_sleep_timer.png",
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
         
            Divider(color: TColor.primaryText.withOpacity(0.07), indent: 70),
            IconTextRow(
              title: "Equalizer",
              icon: "assets/img/m_eq.png",
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
          
            Divider(color: TColor.primaryText.withOpacity(0.07), indent: 70),
            IconTextRow(
              title: "Driving Mod",
              icon: "assets/img/m_driver_mode.png",
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
         
            Divider(color: TColor.primaryText.withOpacity(0.07), indent: 70),
            IconTextRow(
              title: "Hidden Folders",
              icon: "assets/img/m_hidden_folder.png",
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
            
            Divider(color: TColor.primaryText.withOpacity(0.07), indent: 70),
           IconTextRow(
              title: "Scan Media",
              icon: "assets/img/m_scan_media.png",
              onTap: () {
                splashVM.closeDrawer();
              },
            ),
           
          ],
        ),
      ),
      body: TabBarView(controller: controller,
       children: const [
         HomeView(),
         SongsView(),
         SettingsView(),
      ]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: TColor.bg, boxShadow: const [
          BoxShadow(color: Colors.black38, blurRadius: 5, offset: Offset(0, -3))
        ]),
        child: BottomAppBar(
            color: Colors.transparent,
            elevation: 0,
            child: TabBar(
                controller: controller,
                indicatorColor: Colors.transparent,
                indicatorWeight: 1,
                labelColor: TColor.primary,
                labelStyle: const TextStyle(fontSize: 10),
                unselectedLabelColor: TColor.primaryText28,
                unselectedLabelStyle: const TextStyle(fontSize: 10),
                tabs: [
                  Tab(
                      text: "Home",
                      icon: Image.asset(
                          selectTab == 0
                              ? "assets/img/home_tab.png"
                              : "assets/img/home_tab_un.png",
                          width: 20,
                          height: 20)),
                  Tab(
                      text: "Songs",
                      icon: Image.asset(
                          selectTab == 1
                              ? "assets/img/songs_tab.png"
                              : "assets/img/songs_tab_un.png",
                          width: 20,
                          height: 20)),
                  Tab(
                      text: "Settings",
                      icon: Image.asset(
                          selectTab == 2
                              ? "assets/img/setting_tab.png"
                              : "assets/img/setting_tab_un.png",
                          width: 20,
                          height: 20)),
                ])),
      ),
    );
  }
}
