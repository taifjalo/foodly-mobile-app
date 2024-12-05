import 'package:flutter/material.dart';
import 'package:mahalna/constants/constants.dart';
import 'package:mahalna/controllers/tab_index_controller.dart';
import 'package:mahalna/views/cart/cart_page.dart';
import 'package:mahalna/views/home/home_page.dart';
import 'package:mahalna/views/markets/markets.dart';
import 'package:mahalna/views/profile/profile_page.dart';
import 'package:mahalna/views/search/search_page.dart';
import 'package:get/get.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

// ignore: must_be_immutable
class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = const [
    MarketsPage(),
    HomePage(),
    SearchPage(),
    CartPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());

    return Obx(
      () => Scaffold(
        body: Stack(
          children: [
            pageList[controller.tabIndex],
            Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                data: Theme.of(context)
                    .copyWith(canvasColor: const Color(0xFFFFFFFF)),
                child: BottomNavigationBar(
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  unselectedItemColor: const Color(0xFF6E8590),
                  selectedItemColor: const Color(0xFFFCC404),
                  unselectedIconTheme:
                      const IconThemeData(color: kGreyWordsIcons),
                  selectedIconTheme: const IconThemeData(color: kPrimary2),
                  onTap: (value) {
                    controller.setTabIndex = value;
                  },
                  currentIndex: controller.tabIndex,
                  items: [
                    BottomNavigationBarItem(
                      icon: controller.tabIndex == 0
                          ? const Icon(FontAwesome5Solid.store_alt)
                          : const Icon(FontAwesome5Solid.store),
                      label: 'الأسواق',
                    ),
                    BottomNavigationBarItem(
                      icon: controller.tabIndex == 1
                          ? const Icon(AntDesign.appstore1)
                          : const Icon(AntDesign.appstore_o),
                      label: 'ألمطاعم',
                    ),
                    const BottomNavigationBarItem(
                      icon: Icon(Fontisto.search),
                      label: 'البحث',
                    ),
                    const BottomNavigationBarItem(
                      icon: Badge(
                        label: Text('1'),
                        child: Icon(FontAwesome.opencart),
                      ),
                      label: 'السلة',
                    ),
                    BottomNavigationBarItem(
                      icon: controller.tabIndex == 3
                          ? const Icon(FontAwesome.user_circle)
                          : const Icon(FontAwesome.user_circle_o),
                      label: 'الملف',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
