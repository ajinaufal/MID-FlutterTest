import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.ontap,
    this.constraints,
    this.shape,
    required this.title,
    this.styleTitle,
    this.backgroundColor,
  });

  final void Function()? ontap;
  final BoxConstraints? constraints;
  final OutlinedBorder? shape;
  final String title;
  final TextStyle? styleTitle;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: constraints,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 9.0.h, horizontal: 12.0.w),
          backgroundColor: backgroundColor,
          disabledBackgroundColor: Colors.grey.shade300,
          shape: shape,
        ),
        onPressed: ontap,
        child: Text(title, style: styleTitle),
      ),
    );
  }
}
