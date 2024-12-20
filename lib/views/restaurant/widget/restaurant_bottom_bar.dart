import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahalna/common/custom_button.dart';
import 'package:mahalna/constants/constants.dart';
import 'package:mahalna/models/restaurants_model.dart';
import 'package:mahalna/views/restaurant/rating_page.dart';
import 'package:get/get.dart';

class RestaurantBottomBar extends StatelessWidget {
  const RestaurantBottomBar({
    super.key,
    required this.restaurant,
  });

  final RestaurantsModel? restaurant;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      width: width,
      height: 35.h,
      decoration: BoxDecoration(
          color: kPrimary2.withOpacity(0.2),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(12.r),
            topLeft: Radius.circular(12.r),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RatingBarIndicator(
              itemCount: 5,
              itemSize: 25,
              rating: restaurant!.rating.toDouble(),
              itemBuilder: (context, i) => const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  )),
          CustomButton(
            onTap: () {
              Get.to(() => const RatingPage());
            },
            btnColor: kPrimary,
            btnWidth: width / 3,
            text: "Rate Restaurant",
          )
        ],
      ),
    );
  }
}
