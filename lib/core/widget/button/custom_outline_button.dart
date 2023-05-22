import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    super.key,
    this.side,
    this.onTap,
    this.constraints,
    this.shape,
    required this.title,
    this.styleTitle,
  });

  final BorderSide? side;
  final void Function()? onTap;
  final BoxConstraints? constraints;
  final OutlinedBorder? shape;
  final String title;
  final TextStyle? styleTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: constraints,
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 9.0.h, horizontal: 12.0.w),
          shape: shape,
          side: side,
        ),
        child: Text(title, style: styleTitle),
      ),
    );
  }
}
