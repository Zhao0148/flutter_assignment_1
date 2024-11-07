import 'package:flutter/material.dart';

class FontListTile extends StatelessWidget {
  final String title;
  final String fontFamily;
  final double fontSize;
  final FontWeight fontWeight;
  final IconData? leadingIcon;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;

  const FontListTile({
    super.key,
    required this.title,
    this.fontFamily = 'OpenSans',
    this.fontSize = 24,
    this.fontWeight = FontWeight.w700,
    this.leadingIcon = Icons.format_align_center,
    this.backgroundColor = const Color.fromARGB(255, 229, 229, 229),
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontFamily: fontFamily,
          ),
        ),
        leading: leadingIcon != null ? Icon(leadingIcon) : null,
      ),
    );
  }
}