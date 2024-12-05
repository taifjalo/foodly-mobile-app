import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahalna/common/custom_container.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121414),
      appBar: PreferredSize(preferredSize: Size.fromHeight(130.h), child: Container(height: 130,)),
      body:SafeArea(
        child: CustomContainer(ContainerContent: Container())) ,
    );
  }
 }
