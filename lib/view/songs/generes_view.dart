import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/common_widgets/genre_cell.dart';
import 'package:music_player/view_model/genres_view_model.dart';

class GeneresView extends StatefulWidget {
  const GeneresView({super.key});

  @override
  State<GeneresView> createState() => _GeneresViewState();
}

class _GeneresViewState extends State<GeneresView> {

  final genVM = Get.put(GenresViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Obx(
        () => GridView.builder(
          padding: const EdgeInsets.all(15),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 10,
            childAspectRatio: 1.4,
          ),
          itemCount: genVM.allList.length,
          itemBuilder: (context, index) {
            var genObj = genVM.allList[index];
            return  GenreCell(
              genObj: genObj, 
              onPressed: () {  },
              
            ) ;
           
          },
        ),
      ),
    );
  }
}