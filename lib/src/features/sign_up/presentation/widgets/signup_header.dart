import '/src/extension/context_extension.dart';
import 'package:flutter/material.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height,
      width: context.width,
      decoration: BoxDecoration(color: context.colorScheme.primary),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: context.height * .02),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BackButton(
                    color: context.colorScheme.onPrimary,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: context.height * .005),
                      Text(
                        "Sign Up".toUpperCase(),
                        style: context.textTheme.headlineMedium!.copyWith(
                            color: context.colorScheme.onPrimary,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: context.height * .01),
                      Text(
                        "Create an account to continue",
                        style: context.textTheme.bodyMedium!
                            .copyWith(color: context.colorScheme.onPrimary),
                      ),
                    ],
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
