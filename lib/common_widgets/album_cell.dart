import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class AlbumCell extends StatelessWidget {
  final Map albObj;
  final Function(int val) onPressedMenu;
  final VoidCallback onPressed;

  const AlbumCell({
    super.key,
    required this.albObj,
    required this.onPressed,
    required this.onPressedMenu,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                albObj["image"],
                width: double.maxFinite,
                height: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 4),
            //------------Name and More btn row----------------//
            Row(
              children: [
                Expanded(
                  child: Text(
                    albObj["name"],
                    maxLines: 1,
                    style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(width: 4),
                SizedBox(
                  height: 12,
                  width: 12,
                  child: PopupMenuButton<int>(
                    color: const Color.fromARGB(255, 19, 20, 21),
                    offset: Offset(-10, 10),
                    shadowColor: Colors.black87,
                    elevation: 1,
                    icon: Image.asset(
                      "assets/img/more_btn.png",
                      width: 12,
                      height: 12,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.zero,
                    onSelected: onPressedMenu,
                    itemBuilder: (context) {
                      return [
                        const PopupMenuItem(
                            // padding: EdgeInsets.symmetric(horizontal: 14),
                            height: 25,
                            value: 1,
                            child: Text("Play ", style: TextStyle(fontSize: 12))),
                        const PopupMenuItem(
                            value: 2,
                            height: 25,
                            child: Text("Play Next",
                                style: TextStyle(fontSize: 12))),
                        const PopupMenuItem(
                            value: 3,
                            height: 25,
                            child: Text("Add to playing Queeu",
                                style: TextStyle(fontSize: 12))),
                        const PopupMenuItem(
                            value: 4,
                            height: 25,
                            child: Text("Add to playlist",
                                style: TextStyle(fontSize: 12))),
                        const PopupMenuItem(
                            value: 5,
                            height: 25,
                            child:
                                Text("Rename", style: TextStyle(fontSize: 12))),
                        const PopupMenuItem(
                            value: 6,
                            height: 25,
                            child: Text("Tag Editor",
                                style: TextStyle(fontSize: 12))),
                        const PopupMenuItem(
                            value: 7,
                            height: 25,
                            child: Text("Go To Artist",
                                style: TextStyle(fontSize: 12))),
                        const PopupMenuItem(
                            value: 8,
                            height: 25,
                            child: Text("Delete from Device",
                                style: TextStyle(fontSize: 12))),
                        const PopupMenuItem(
                            value: 9,
                            height: 25,
                            child: Text("Share", style: TextStyle(fontSize: 12))),
                      ];
                    },
                  ),
                ),
           
            
              ],
            ),
            const SizedBox(height: 4),
            //------------Artists and SOngs no. row----------------//
            Row(
              children: [
                Expanded(
                  child: Text(
                    albObj["artists"],
                    maxLines: 1,
                    style: TextStyle(
                        color: TColor.lightGray,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  albObj["songs"],
                  maxLines: 1,
                  style: TextStyle(
                      color: TColor.lightGray,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ]),
    );
  }
}
