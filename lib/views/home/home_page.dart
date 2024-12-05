import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mahalna/common/custom_container.dart';
import 'package:mahalna/common/customa_appbar.dart';
import 'package:mahalna/common/heading.dart';
import 'package:mahalna/views/home/all_fastest_foods_page.dart';
import 'package:mahalna/views/home/all_nearby_restaurants.dart';
import 'package:mahalna/views/home/recommendations_page.dart';
import 'package:mahalna/views/home/widgets/category_list.dart';
import 'package:mahalna/views/home/widgets/food_list.dart';
import 'package:mahalna/views/home/widgets/nearby_restaurants_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h), child: const CustomaAppBar()),
      body: SafeArea(
        child: CustomContainer(
            ContainerContent: Column(
          children: [
            const CategoryList(),
            Heading(
              text: "Nearby Restaurants",
              onTap: () {
                Get.to(() => const AllNearbyRestaurants(),
                    transition: Transition.rightToLeftWithFade,
                    duration: const Duration(milliseconds: 500));
              },
            ),
            const NearbyRestaurants(),
            Heading(
              text: "Try Something New",
              onTap: () {
                Get.to(() => const RecommendationsPage(),
                    transition: Transition.rightToLeftWithFade,
                    duration: const Duration(milliseconds: 500));
              },
            ),
            const FoodsList(),
            Heading(
              text: "Food closer to you",
              onTap: () {
                Get.to(() => const AllFastestFoodsPage(),
                    transition: Transition.rightToLeftWithFade,
                    duration: const Duration(milliseconds: 500));
              },
            ),
            const FoodsList(),
          ],
        )),
      ),
    );
  }
}
