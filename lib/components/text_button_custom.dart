import 'package:flutter/material.dart';

class MyTextButtonCustom extends StatefulWidget {
  const MyTextButtonCustom({
    super.key,
    required this.onPressed,
    required this.width,
    required this.height,
    required this.padding,
    required this.bgColor,
    required this.child,
  });

  final VoidCallback onPressed;
  final double width, height;
  final EdgeInsetsGeometry padding;
  final Color bgColor;
  final Widget child;

  @override
  State<MyTextButtonCustom> createState() => _MyTextButtonCustomState();
}

class _MyTextButtonCustomState extends State<MyTextButtonCustom> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(3),
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        alignment: Alignment.centerLeft,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: widget.bgColor,
          borderRadius: BorderRadius.circular(100),
        ),
        padding: widget.padding,
        child: widget.child,
      ),
    );
  }
}
