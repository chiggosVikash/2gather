import 'package:backmate/src/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  final double _leftPos;
  final double _topPos;
  const ProfileIcon({super.key, double leftPos = 0, double topPos = 0})
      : _topPos = topPos,
        _leftPos = leftPos;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: _leftPos,
      top: _topPos,
      child: Container(
        width: context.height * 0.03,
        height: context.height * 0.03,
        decoration: const ShapeDecoration(
          image: DecorationImage(
            image: NetworkImage("https://picsum.photos/20/20"),
            fit: BoxFit.fill,
          ),
          shape: OvalBorder(),
        ),
      ),
    );
  }
}
