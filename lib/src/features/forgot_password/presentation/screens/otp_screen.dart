import '/src/features/forgot_password/presentation/screens/change_password_screen.dart';
import 'package:go_router/go_router.dart';

import '/src/core/utils/size_utils.dart';
import '/src/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../shared/widgets/otp_input.dart';

class OtpScreen extends ConsumerStatefulWidget {
  static const routeAddress = 'otp_screen';
  static const routeName = 'Otp-Screen';
  const OtpScreen({super.key});

  @override
  ConsumerState<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends ConsumerState<OtpScreen> {
@override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(title: const Text("OTP Verification"),),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.width * .04),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: context.height * 0.3,
                  child:SvgPicture.asset('assets/vectors/enter_otp.svg'),
                ),
              ),
          
              Padding(
                padding: EdgeInsets.symmetric(vertical: context.height *.02),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Enter the OTP sent to your email',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF9B9999),
                    ),
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OtpInput(),
                  OtpInput(),
                  OtpInput(),
                  OtpInput(),
                  OtpInput(),
                  OtpInput(),
                ],
              ),
              SizedBox(height: context.height * .1),
              CustomButton(
                minSize: Size(context.width *.6, context.height * .06),
                title: 'Verify', onPressed: () {
                context.pushNamed(ChangePasswordScreen.routeName);
              }),
             
            ],
          ),
        ),
      ),
    );
  }
}