import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:youtube_flutter/src/controller/app_controller.dart';
import 'package:youtube_flutter/src/pages/explore.dart';
import 'package:youtube_flutter/src/pages/home.dart';
import 'package:youtube_flutter/src/pages/library.dart';
import 'package:youtube_flutter/src/pages/subscribe.dart';

class App extends GetView<AppController> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() {
          switch (RouteName.values[controller.currentIndex.value]) {
            case RouteName.Home:
              return const Home();

            case RouteName.Explore:
              return const Explore();


            case RouteName.Subs:
              return const Subscribe();

            case RouteName.Library:
              return const Library();

          }
          return Container();
        }),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
              // type: BottomNavigationBarType.fixed,
              currentIndex: controller.currentIndex.value,
              showSelectedLabels: true,
              selectedItemColor: Colors.black,
              onTap: (index) {
                controller.changePageIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/svg/icons/home_off.svg'),
                    activeIcon:
                        SvgPicture.asset('assets/svg/icons/home_on.svg'),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/svg/icons/compass_off.svg',
                      width: 22,
                    ),
                    activeIcon: SvgPicture.asset(
                      'assets/svg/icons/compass_on.svg',
                      width: 22,
                    ),
                    label: 'Search'),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: SvgPicture.asset(
                        'assets/svg/icons/plus.svg',
                        width: 35,
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/svg/icons/subs_off.svg'),
                    activeIcon:
                        SvgPicture.asset('assets/svg/icons/subs_on.svg'),
                    label: 'Subscribe'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/svg/icons/library_off.svg'),
                    activeIcon:
                        SvgPicture.asset('assets/svg/icons/library_on.svg'),
                    label: 'Library'),
              ],
            )));
  }
}
