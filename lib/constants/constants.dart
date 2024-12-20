import 'dart:ui';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

String version = "Version _number".tr();
const String translations = "assets/translations";

String googleApiKey = '';

const kPrimary = Color(0xFFb547c6);
const kPrimary2 = Color(0xFFFCC404);
const kPrimaryLight = Color(0xFFFFDE21);
const kPrimaryLight2 = Color(0xFFf1ddf4);
const kSecondary = Color(0xffffa44f);
const kSecondaryLight = Color(0xFFffe5db);
const kTertiary = Color(0xff0078a6);
const kGray = Color(0xff83829A);
const kGrayLight = Color(0xffC1C0C8);
const kLightWhite = Color(0xffFAFAFC);
const kWhite = Color(0xfffFFFFF);
const kDark = Color(0xff000000);
const kDark2 = Color(0xD4000000);
const kRed = Color(0xffe81e4d);
const kOffWhite = Color(0xffF3F4F8);
const kGreyWordsIcons = Color(0xFF6E8590);

double height = 825.h;
double width = 375.w;

const String appBaseUrl = "http://localhost:6013";

final List<String> verificationReasons = [
  'Real-time Updates: Get instant notifications about your order status.',
  'Direct Communication: A verified number ensures seamless communication.',
  'Enhanced Security: Protect your account and confirm orders securely.',
  'Effortless Rescheduling: Easily address issues with a quick call.',
  'Exclusive Offers: Stay in the loop for special deals and promotions.'
];

//final List<String> verificationReasons = [
//"تحديثات في الوقت الفعلي: احصل على إشعارات فورية حول حالة طلبك.",
//"التواصل المباشر: يضمن الرقم الذي تم التحقق منه التواصل السلس.",
//"أمان معزز: احم حسابك وأكد الطلبات بأمان.",
//"إعادة الجدولة دون عناء: عالج المشكلات بسهولة من خلال مكالمة سريعة.",
//"عروض حصرية: كن على اطلاع دائم بالصفقات والعروض الترويجية الخاصة."];