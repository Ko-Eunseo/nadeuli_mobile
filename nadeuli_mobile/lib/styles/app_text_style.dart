import 'package:flutter/material.dart';

class AppTextStyles {
  static const extra = TextStyle(
    fontFamily: 'JejuDoldam',
  );
  static const bold = TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w700,
  );
  static const medium = TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w500,
  );
  static const regular = TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w400,
  );
  static const light = TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w100,
  );

  static TextStyle header20E({Color color = Colors.black}) =>
      extra.copyWith(fontSize: 30, color: color);
  static TextStyle header18B({Color color = Colors.black}) =>
      bold.copyWith(fontSize: 18, color: color);
  static TextStyle header16M({Color color = Colors.black}) =>
      medium.copyWith(fontSize: 16, color: color);
  static TextStyle body16M({Color color = Colors.black}) =>
      medium.copyWith(fontSize: 16, color: color);
  static TextStyle body14M({Color color = Colors.black}) =>
      medium.copyWith(fontSize: 14, color: color);
  static TextStyle body14R({Color color = Colors.black}) =>
      regular.copyWith(fontSize: 14, color: color);
  static TextStyle body12({Color color = Colors.black}) =>
      light.copyWith(fontSize: 12, color: color);
}
