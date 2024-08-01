import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ondemand/utils/app_sizes.dart';
import 'package:ondemand/utils/colors.dart';

class CustomButton extends StatefulWidget {
  final bool isLoading;
  final String buttonText;
  final Function() ontap;
  final bool isSuffix;
  final bool isPrefix;
  final IconData suffixIcon;
  final IconData prefixIcon;
  final Color buttonColor;
  final Color loaderColor;
  final Color textColor;
  final Color borderColor;
  final double paddding;
  final bool? isShadow;

  const CustomButton({
    super.key,
    this.isLoading = false,
    required this.buttonText,
    required this.ontap,
    this.isSuffix = false,
    this.isPrefix = false,
    this.suffixIcon = Icons.arrow_forward_ios,
    this.prefixIcon = Icons.arrow_back_ios,
    this.buttonColor = primaryColor,
    this.loaderColor = Colors.white,
    this.textColor = Colors.white,
    this.borderColor = Colors.transparent,
    this.paddding = AppSizes.p16,
    this.isShadow = false,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: !widget.isLoading ? widget.ontap : null,
      child: Container(
        padding: EdgeInsets.all(widget.paddding),
        decoration: BoxDecoration(
          border: Border.all(color: widget.borderColor),
          color: widget.buttonColor,
          borderRadius: BorderRadius.circular(30.r),
          boxShadow: widget.isShadow!
              ? [
                  BoxShadow(
                    color: richBalck.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ]
              : [],
        ),
        child: widget.isLoading
            ? Center(
                child: SizedBox(
                  height: 23,
                  width: 23,
                  child: CircularProgressIndicator(
                    color: widget.loaderColor,
                    strokeWidth: 2.0,
                  ),
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (widget.isPrefix) gapW8 else const SizedBox.shrink(),
                  if (widget.isPrefix)
                    Icon(
                      widget.prefixIcon,
                      color: widget.textColor,
                      size: 18.sp,
                    )
                  else
                    const SizedBox.shrink(),
                  if (widget.isPrefix) gapW8 else const SizedBox.shrink(),
                  Text(
                    widget.buttonText,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: widget.textColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  if (widget.isSuffix) gapW8 else const SizedBox.shrink(),
                  if (widget.isSuffix)
                    Icon(
                      widget.suffixIcon,
                      color: widget.textColor,
                      size: 18.sp,
                    )
                  else
                    const SizedBox.shrink(),
                ],
              ),
      ),
    );
  }
}
