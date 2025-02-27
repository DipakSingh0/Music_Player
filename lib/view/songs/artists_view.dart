import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/common_widgets/artist_row.dart';
import 'package:music_player/view/songs/artists_details_view.dart';
import 'package:music_player/view_model/artists_view_model.dart';

class ArtistsView extends StatefulWidget {
  const ArtistsView({super.key});

  @override
  State<ArtistsView> createState() => _ArtistsViewState();
}

class _ArtistsViewState extends State<ArtistsView> {
  final artVM = Get.put(ArtistsViewModel());

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Obx(
        () => ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(vertical: 20 , horizontal: 20),
            // scrollDirection: Axis.horizontal,
            itemCount: artVM.allList.length,
            itemBuilder: (context, index) {
              var artObj = artVM.allList[index];
              return ArtistsRow(
                artObj: artObj, 
                onPressed: (){
                  Get.to(() => ArtistsDetailsView());
                }, 
                onPressedPlay: (){}, 
                onPressedMenuSelect: (selectIndex){},
                );
            }),
      ),
    );
  }
}
