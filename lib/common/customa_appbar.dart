import 'package:flutter/material.dart';
import 'package:mahalna/common/app_style.dart';
import 'package:mahalna/common/reusable_text.dart';
import 'package:mahalna/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomaAppBar extends StatelessWidget {
  const CustomaAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      height: 110.h,
      width: width,
      color: kDark2,
      child: Container(
        margin: EdgeInsets.only(top: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 22.r,
                  backgroundColor: kPrimary2,
                  backgroundImage: const NetworkImage(
                      'https://images.healthshots.com/healthshots/en/uploads/2020/12/08182549/positive-person.jpg'),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                          text: "التوصيل الى",
                          style: appStyle(12, kPrimary2, FontWeight.w600)),
                      SizedBox(
                        width: width * 0.65,
                        child: Text(
                          "16768 21st Ave N, Plymouth, MN55447",
                          overflow: TextOverflow.ellipsis,
                          style: appStyle(11, kGrayLight, FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              getTimeOfDay(),
              style: const TextStyle(fontSize: 35),
            )
          ],
        ),
      ),
    );
  }
}

String getTimeOfDay() {
  DateTime now = DateTime.now();
  int hour = now.hour;

  if (hour >= 0 && hour < 12) {
    return ' ☀️ ';
  } else if (hour >= 12 && hour < 16) {
    return ' ⛅ ';
  } else {
    return ' 🌙 ';
  }
}
