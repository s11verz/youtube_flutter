import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _thumbNail(),
          _simpleDetailInfo(),
        ],
      ),
    );
  }
}

Widget _thumbNail() {
  return Container(
    height: 250,
    color: Colors.grey.withOpacity(0.5),
  );
}

Widget _simpleDetailInfo() {

  return Container(
    padding: EdgeInsets.only(left: 10, bottom: 40),
    height: 100,

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 15),
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey.withOpacity(0.5),
          backgroundImage: Image.network(
                  'https://yt3.ggpht.com/ytc/AKedOLQagIEl2WOUacXZ8WlCPvApoIouP9sNGkMIDVdQ=s48-c-k-c0x00ffffff-no-rj')
              .image,
        ),
        SizedBox(width: 15),
        Expanded(
          child: Container(

            child: Column(
              children: [
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '개남 유투브 다시보기',
                      maxLines: 2,
                    ),
                    IconButton(
                        alignment: Alignment.topCenter,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          size: 18,
                        )),
                  ],
                )),
                Row(
                  children: [
                    Text('개발하는 남자',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black.withOpacity(0.8))),
                    const Text(' · '),
                    Text('조회수 1000회',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black.withOpacity(0.6))),
                    const Text(' · '),
                    Text('2021-02-13',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black.withOpacity(0.6))),
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(width: 15),
      ],
    ),
  );
}
