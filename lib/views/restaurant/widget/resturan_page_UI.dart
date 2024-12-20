import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:mahalna/common/app_style.dart';
import 'package:mahalna/common/reusable_text.dart';
import 'package:mahalna/constants/constants.dart';
import 'package:mahalna/models/restaurants_model.dart';
import 'package:mahalna/views/restaurant/directions_page.dart';
import 'package:mahalna/views/restaurant/widget/restaurant_bottom_bar.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({super.key, required this.restaurant});

  final RestaurantsModel? restaurant;

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Tab length, e.g. Menu, Reviews
      child: Scaffold(
        backgroundColor: kLightWhite,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(250.h), // Image + AppBar combined height
          child: Stack(
            children: [
              // Restaurant Image
              SizedBox(
                height: 230.h,
                width: MediaQuery.of(context).size.width,
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: widget.restaurant!.imageUrl,
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              // Back Button and Restaurant Name on top of the image
              Positioned(
                top: 40.h,
                left: 16.w,
                right: 16.w,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const DirectionsPage());
                        },
                        child: const Icon(
                          Ionicons.chevron_back_circle,
                          size: 28,
                          color: kLightWhite,
                        ),
                      ),
                      ReusableText(
                        text: widget.restaurant!.title,
                        style: appStyle(18, kLightWhite, FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          Ionicons.location,
                          size: 28,
                          color: kLightWhite,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Bottom Bar with Restaurant Rating and Action Button
              Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  width: MediaQuery.of(context).size.width,
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, -3),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Restaurant Rating
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 18,
                            color: kPrimary2,
                          ),
                          SizedBox(width: 6.w),
                          ReusableText(
                            text: widget.restaurant!.rating.toString(),
                            style: appStyle(14, kDark, FontWeight.w600),
                          ),
                        ],
                      ),
                      // "Order Now" Button
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          iconColor: kPrimary2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          minimumSize: Size(120.w, 40.h),
                        ),
                        child: ReusableText(
                          text: 'Order Now',
                          style: appStyle(14, Colors.white, FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const Column(
          children: [
            // Tab Bar (e.g. Menu, Reviews, Details)
            TabBar(
              indicatorColor: kPrimary2,
              tabs: [
                Tab(text: "Menu"),
                Tab(text: "Reviews"),
              ],
            ),
            // Tab Views
            Expanded(
              child: TabBarView(
                children: [
                  // Menu Section (Placeholder for now)
                  Center(child: Text("Menu Section")),
                  // Reviews Section (Placeholder for now)
                  Center(child: Text("Reviews Section")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
