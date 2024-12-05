import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahalna/common/custom_container.dart';
import 'package:mahalna/common/customa_appbar.dart';
import 'package:mahalna/views/home/widgets/category_list.dart';

class MarketsPage extends StatelessWidget {
  const MarketsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121414),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h), child: const CustomaAppBar()),
      body: SafeArea(
          child: CustomContainer(
              ContainerContent: const Column(
        children: [CategoryList()],
      ))),
    );
  }
}
