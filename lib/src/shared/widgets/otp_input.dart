import 'package:backmate/src/extension/context_extension.dart';
import 'package:flutter/material.dart';

class OtpInput extends StatelessWidget {
  const OtpInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.width * 0.02),
        child: Container(
            decoration: BoxDecoration(
              // border: Border.all(color: const Color(0xFFA5CFDC)),
              borderRadius: BorderRadius.circular(12),
              color: context.colorScheme.secondaryContainer.withOpacity(.4),
            ),
            child: TextFormField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: InputBorder.none,
                // isDense: true,
              ),
            )),
      ),
    );
  }
}
