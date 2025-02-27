import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class ArtistsRow extends StatelessWidget {
  final Map artObj;
  final VoidCallback onPressedPlay;
  final Function(int select) onPressedMenuSelect;
  final VoidCallback onPressed;

  const ArtistsRow({
    super.key,
    required this.artObj,
    required this.onPressed,
    required this.onPressedPlay,
    required this.onPressedMenuSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical :8.0),
      child: InkWell(
        onTap: onPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(alignment: Alignment.center, children: [
              ClipRRect(
                // borderRadius: BorderRadius.circular(24),
                child: Image.asset(
                  artObj["image"],
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: TColor.primaryText28),
                  // borderRadius: BorderRadius.circular(25),
                ),
              ),
            ]),
            const SizedBox(width: 16),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  artObj["name"],
                  maxLines: 1,
                  style: TextStyle(
                      color: TColor.primaryText60,
                      fontSize: 13,
                      fontWeight: FontWeight.w700),
                ),
               const SizedBox(height: 6,),
                Text(
                  "${artObj["albums"]} \t*\t${artObj["songs"]}",
                  maxLines: 1,
                  style: TextStyle(color: TColor.secondaryText, fontSize: 12),
                )
              ],
            )),
            // IconButton(
            //   // onPressed: onPressedPlay,
            //   onPressed: onPressedMenuSelect,
            //   icon: Image.asset(
            //     "assets/img/play_btn.png",
            //     width: 25,
            //     height: 25,
            //   ),
            // ),
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
                  width: 25,
                  height: 25,
                  color: Colors.white,
                ),
                padding: EdgeInsets.zero,
                onSelected: onPressedMenuSelect,
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
                        child: Text("Play Next", style: TextStyle(fontSize: 12))),
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
                        child: Text("Rename", style: TextStyle(fontSize: 12))),
                    const PopupMenuItem(
                        value: 6,
                        height: 25,
                        child: Text("Tag Editor", style: TextStyle(fontSize: 12))),
                    const PopupMenuItem(
                        value: 7,
                        height: 25,
                        child:
                            Text("Go To Artist", style: TextStyle(fontSize: 12))),
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
      ),
    );
  }
}
