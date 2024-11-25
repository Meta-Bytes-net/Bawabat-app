import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();
}

extension StringExtension on String? {
  bool isNullOrEmpty() => this == null || this == "";
  bool isNotNullAndNotEmpty() => !isNullOrEmpty();
}

extension ListExtension<T> on List<T>? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
  bool isNotNullAndNotEmpty() => this != null && this!.isNotEmpty;
}

extension SizedContext on BuildContext {
  double get width => MediaQuery.sizeOf(this).width;

  double get height => MediaQuery.sizeOf(this).height;
}

extension IntExtensions on int {
  int validate({int value = 0}) {
    return this;
  }

  Widget get sizedBoxHeight => SizedBox(height: toDouble().h);

  Widget get sizedWidth => SizedBox(width: toDouble().w);

  Duration get seconds => Duration(seconds: validate());

  Duration get milliseconds => Duration(milliseconds: validate());

  Duration get days => Duration(days: validate());

  Size get size => Size(toDouble(), toDouble());
}
