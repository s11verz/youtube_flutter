import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class YoutubeDetail extends StatelessWidget {
  const YoutubeDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(height: 250, color: Colors.grey.withOpacity(0.5)),
          Expanded(child: _description())
        ],
      ),
    );
  }
}

Widget get line =>
    Container(
      height: 1,
      color: Colors.black.withOpacity(0.1),
    );

Widget _description() {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _titleZone(),
        line,
        _descriptionZone(),
        _buttonZone(),
        line,
        _ownerZone()
      ],
    ),
  );
}

Widget _titleZone() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          '개발하는 남자 유투브 영상 다시보기',
          style: TextStyle(fontSize: 15),
          textAlign: TextAlign.left,
        ),
        Row(
          children: [
            Text('조회수 1000회', style: TextStyle(
                fontSize: 13, color: Colors.black.withOpacity(0.5)),),
            const Text(' · '),
            Text('2021-02-13', style: TextStyle(
                fontSize: 13, color: Colors.black.withOpacity(0.5)),)

          ],
        )
      ],
    ),
  );
}

Widget _descriptionZone() {
  return const Padding(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
    child: Text('안녕하세요 개발하는 남자 개남입니다.',
      style: TextStyle(fontSize: 14),
      textAlign: TextAlign.left,),

  );
}

Widget _buttonZone() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buttonOne('like', '1000'),
        _buttonOne('dislike', '0'),
        _buttonOne('share', 'share'),
        _buttonOne('save', 'save')
      ],
    ),
  );
}

Widget _buttonOne(String iconPath, String text) {
  return Row(
    children: [
      Column(
        children: [
          SvgPicture.asset('assets/svg/icons/$iconPath.svg'),
          Text(text)
        ],
      )
    ],
  );
}

Widget _ownerZone() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    child: Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey.withOpacity(0.5),
          backgroundImage: Image
              .network(
              'https://yt3.ggpht.com/ytc/AKedOLQagIEl2WOUacXZ8WlCPvApoIouP9sNGkMIDVdQ=s48-c-k-c0x00ffffff-no-rj')
              .image,
        ),
        const SizedBox(width: 15),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('개발하는 남자', style: TextStyle(fontSize: 18)),
            Text('구독자 10000', style: TextStyle(
                fontSize: 14, color: Colors.black.withOpacity(0.6)))
          ],
        )),
        GestureDetector(child: const Text(
            '구독', style: TextStyle(color: Colors.red, fontSize: 16)),)
      ],
    ),);
}