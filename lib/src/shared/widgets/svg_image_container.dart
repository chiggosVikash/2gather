
import 'package:backmate/src/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImageContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final String assetsImageUrl;
  const SvgImageContainer({super.key,this.height,this.width,required this.assetsImageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? context.height * .3,
      child: SvgPicture.asset(assetsImageUrl),
    );
  }
}