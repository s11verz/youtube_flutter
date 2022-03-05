import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_flutter/src/components/custom_appbar.dart';
import 'package:youtube_flutter/src/components/video_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: [
        const SliverAppBar(
          backgroundColor: Colors.white,
          title: CustomAppBar(),
          floating: true,
          snap: true,
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return GestureDetector(
            onTap: () {
              Get.toNamed('/detail/2342');
            },
            child:  VideoWidget(),

          );
        }, childCount: 10))
      ],
    ));
  }
}
