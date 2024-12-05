// ignore_for_file: must_be_immutable, unused_import, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahalna/constants/constants.dart';
import 'package:mahalna/main.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({super.key, required this.ContainerContent});

  Widget ContainerContent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.75,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.r),
          bottomRight: Radius.circular(10.r),
        ),
        child: Container(
          width: width,
          color: kOffWhite,
          child: SingleChildScrollView(
            child: ContainerContent,
          ),
        ),
      ),
    );
  }
}
