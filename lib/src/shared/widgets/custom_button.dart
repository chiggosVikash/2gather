import 'package:backmate/src/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final Size? minSize ;
  const CustomButton({super.key, this.onPressed, required this.title,this.minSize});

  @override
  Widget build(BuildContext context) {
    return 
        Center(
          child: FilledButton(
                onPressed: onPressed,
                style: FilledButton.styleFrom(
          minimumSize: minSize ?? Size(context.width * .9, context.height * .06),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
                ),
                child: Text(title,
            style: context.textTheme.bodyLarge!.copyWith(
                color: context.colorScheme.onPrimary,
                fontWeight: FontWeight.bold)),
              ),
        );
  }
}
