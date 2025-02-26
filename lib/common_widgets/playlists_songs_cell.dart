import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class MyPlaylistsSongsCell extends StatelessWidget {
  final Map pObj;
  final VoidCallback onPressedPlay;
  final VoidCallback onPressed;

  const MyPlaylistsSongsCell({
    super.key,
    required this.pObj,
    required this.onPressed,
    required this.onPressedPlay,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomCenter, 
    children: [
       Image.asset(
        pObj["image"],
        width: double.maxFinite,
        height: double.maxFinite,
        fit: BoxFit.cover,
      ),
      Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.black,
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pObj["name"],
                    maxLines: 1,
                    style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    pObj["songs"],
                    maxLines: 1,
                    style: TextStyle(
                        color: TColor.primaryText28,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
         
          ],
        ),
      ),
    ]);
  }
}
