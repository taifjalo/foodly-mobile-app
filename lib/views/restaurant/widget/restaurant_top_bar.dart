import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:mahalna/common/app_style.dart';
import 'package:mahalna/common/reusable_text.dart';
import 'package:mahalna/constants/constants.dart';
import 'package:mahalna/models/restaurants_model.dart';
import 'package:mahalna/views/restaurant/directions_page.dart';
import 'package:get/get.dart';

class RestaurantTopBar extends StatelessWidget {
  const RestaurantTopBar({
    super.key,
    required this.restaurant,
  });

  final RestaurantsModel? restaurant;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Ionicons.chevron_back_circle,
              size: 35,
              color: kPrimaryLight,
            ),
          ),
          ReusableText(
              text: restaurant!.title,
              style: appStyle(15, kDark, FontWeight.w900)),
          GestureDetector(
            onTap: () {
              Get.to(() => const DirectionsPage());
            },
            child: const Icon(
              Ionicons.location,
              size: 35,
              color: kPrimaryLight,
            ),
          )
        ],
      ),
    );
  }
}
