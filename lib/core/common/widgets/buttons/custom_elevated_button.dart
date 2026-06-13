import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  final Color backgroundColor ;
  final Widget child ;
  final bool showBorder ;
  final Color? borderColor ;
  final double? width ;
  final double? height ;
  final VoidCallback? onPressed ;
  final EdgeInsetsGeometry? padding ;

  const CustomElevatedButton({
    super.key,
    required this.backgroundColor,
    required this.child,
    this.showBorder= false,
    this.borderColor,
    this.width,
    this.height,
     this.onPressed,
    this.padding
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:width,
      height:height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(32.r)),
          backgroundColor: backgroundColor,
          side:showBorder ? BorderSide(color:borderColor!) : BorderSide.none,
          padding: padding
        ),
        onPressed: onPressed,
        child:child,
      ),
    );
  }
}
