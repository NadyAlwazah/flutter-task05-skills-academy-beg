import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarActionAvatar extends StatelessWidget {
  final String imagePath;
  final bool isSvg;
  final Color? backgroundColor;
  final double radius;

  const AppBarActionAvatar({
    super.key,
    required this.imagePath,
    this.isSvg = false,
    this.backgroundColor = Colors.white,
    this.radius = 20,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: backgroundColor,
        radius: radius,
        child: isSvg
            ? SvgPicture.asset(
                imagePath,
                fit: BoxFit.cover,
                width: radius * 2,
                height: radius * 2,
              )
            : ClipOval(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: radius * 2,
                  height: radius * 2,
                ),
              ),
      ),
    );
  }
}
