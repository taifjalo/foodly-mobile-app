import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahalna/common/app_style.dart';
import 'package:mahalna/common/back_ground_container.dart';
import 'package:mahalna/common/reusable_text.dart';
import 'package:mahalna/constants/constants.dart';
import 'package:mahalna/constants/uidata.dart';
import 'package:mahalna/views/home/widgets/food.tile.dart';

class AllFastestFoodsPage extends StatelessWidget {
  const AllFastestFoodsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimary,
        title: ReusableText(
            text: "Fastest Foods",
            style: appStyle(13, kLightWhite, FontWeight.w600)),
      ),
      body: BackGroundContainer(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(12.h),
          child: ListView(
            children: List.generate(foods.length, (i) {
              var food = foods[i];
              return FoodTile(
                food: food,
              );
            }),
          ),
        ),
      ),
    );
  }
}
