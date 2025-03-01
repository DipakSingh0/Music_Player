import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/common_widgets/my_playlist_cell.dart';
import 'package:music_player/common_widgets/playlists_songs_cell.dart';
import 'package:music_player/common_widgets/view_all_section.dart';
import 'package:music_player/view_model/playlists_view_model.dart';

class PlaylistsView extends StatefulWidget {
  const PlaylistsView({super.key});

  @override
  State<PlaylistsView> createState() => _PlaylistsViewState();
}

class _PlaylistsViewState extends State<PlaylistsView> {
  final plVM = Get.put(PlaylistsViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor:const Color(0xff23273B),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset("assets/img/add.png"),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.4,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                  ),
                  itemCount: plVM.playlistArr.length,
                  itemBuilder: (context, index) {
                    var pObj = plVM.playlistArr[index];
                    return MyPlaylistsSongsCell(
                        pObj: pObj, onPressed: () {}, onPressedPlay: () {});
                  },
                ),
              ),
              ViewAllSection(
                title: "My Playlist",
                onPressed: () {},
              ),
              SizedBox(
                height: 150,
                child: Obx(
                  () => ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      itemCount: plVM.myPlaylistArr.length,
                      itemBuilder: (context, index) {
                        var pObj = plVM.myPlaylistArr[index];

                        return MyPlaylistCell(pObj: pObj, onPressed: () {});
                      }),
                ),
              )
            ],
          ),
        ));
  }
}
