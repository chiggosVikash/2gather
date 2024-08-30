import 'package:backmate/src/extension/context_extension.dart';
import 'package:backmate/src/shared/filled_input_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgotPasswordS extends StatefulWidget {
  const ForgotPasswordS({super.key});

  @override
  State<ForgotPasswordS> createState() => _ForgotPasswordSState();
}

class _ForgotPasswordSState extends State<ForgotPasswordS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('Forgot Password'),
      ),
      body: ListView(
        children: [
          SvgPicture.asset(
            'assets/forget-password.svg',
            height: context.height * .3,
          ),
          SizedBox(
            height: context.height * .03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width * .04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: context.width * .8,
                  child: Text(
                      "Forgot your password? Don't worry we got you covered!",
                      style: context.textTheme.bodyMedium!.copyWith(
                        color: context.colorScheme.secondary,
                      )),
                ),
                SizedBox(
                  height: context.height * .03,
                ),
                FilledInputDesign(
                    child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: context.width * .02,
                          vertical: context.height * .005),
                      suffixIcon: const Icon(Icons.email),
                      labelText: 'Enter Email ID',
                      border: InputBorder.none),
                )),
                SizedBox(
                  height: context.height * .08,
                ),
                Center(
                  child: FilledButton(
                      style: FilledButton.styleFrom(
                        minimumSize:
                            Size(context.width * .8, context.height * .06),
                      ),
                      onPressed: () {},
                      child: const Text("Send OTP")),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
