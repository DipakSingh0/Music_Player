import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:music_player/common/color_extension.dart';
import 'package:music_player/common/icon_text_row.dart';
import 'package:music_player/view_model/splash_view_model.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
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
          "Settings",
          style: TextStyle(
            color: TColor.primaryText80,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 35,
          ),
          IconTextRow(
            title: "Display",
            icon: "assets/img/s_display.png",
            onTap: () {},
          ),
          IconTextRow(
            title: "Audio",
            icon: "assets/img/s_audio.png",
            onTap: () {},
          ),
          IconTextRow(
            title: "Headset",
            icon: "assets/img/s_headset.png",
            onTap: () {},
          ),
           IconTextRow(
            title: "Equalizer",
            icon: "assets/img/m_eq.png",
            onTap: () {
            //   splashVM.closeDrawer();
            },
          ),
          IconTextRow(
            title: "Lock Screens",
            icon: "assets/img/s_lock_screen.png",
            onTap: () {},
          ),
          IconTextRow(
            title: "Advanced",
            icon: "assets/img/s_menu.png",
            onTap: () {},
          ),
          IconTextRow(
            title: "Others",
            icon: "assets/img/s_other.png",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
