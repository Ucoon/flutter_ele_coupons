import 'package:flutter/material.dart';
import '../common/values/values.dart';

///卡片式布局
class EmptyCardWidget extends StatelessWidget {
  final Widget child;
  final double? width; //宽
  final double? height; //高
  final Color color; //背景颜色
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderSide side; //边框
  final BorderRadiusGeometry? borderRadius; // 圆角值

  const EmptyCardWidget({
    Key? key,
    required this.child,
    this.color = Colors.white,
    this.side = BorderSide.none,
    this.width,
    this.height,
    this.borderRadius,
    this.padding,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      child: child,
      margin: margin ?? EdgeInsets.zero,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
        borderRadius: borderRadius ?? borderRadius15,
        border: Border.fromBorderSide(side),
      ),
    );
  }
}
