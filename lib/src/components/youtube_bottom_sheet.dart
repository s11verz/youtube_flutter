// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class YoutubeBottomSheet extends StatelessWidget {
  const YoutubeBottomSheet({Key? key}) : super(key: key);

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Make",
          style: TextStyle(fontSize: 16),
        ),
        IconButton(
            onPressed: () {
              Get.back;
            },
            icon: Icon(Icons.close))
      ],
    );
  }

  Widget _itemButton({required String icon, required double iconSize, required String label, required Function onTap}) {
    return InkWell(
      onTap: (){},
      child: Row(
        children: [
          Container(
            width: iconSize,
            height: iconSize,
            child: SvgPicture.asset("assets/svg/icons/$icon.svg"),
          ),
          SizedBox(
            width: 15,
          ),
          Text(label)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        height: 200,
        color: Colors.white,
        child: Column(
          children: [
            _header(),
            SizedBox(
              height: 10,
            ),
            _itemButton(
                icon: "upload",
                iconSize: 17,
                label: "Video Upload",
                onTap: () {
                print("Video Upload Function");
                }),
            SizedBox(height: 10),
            _itemButton(
                icon: "broadcast",
                iconSize: 17,
                label: "Real Time Streaming",
                onTap: ()
                {
                print("Real Time Streaming Function");
                }
            )
          ],
        ),
      ),
    );
  }
}
