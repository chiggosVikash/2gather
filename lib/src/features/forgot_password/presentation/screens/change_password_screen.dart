import '/src/core/utils/size_utils.dart';
import '/src/shared/filled_input_design.dart';
import '/src/shared/widgets/custom_button.dart';
import '/src/shared/widgets/svg_image_container.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
  static const routeAddress = 'change_password';
  static const routeName = 'Change-Password';
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Change Password"),),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.width * .03),
          child: Column(children: [
            const SvgImageContainer(assetsImageUrl: 'assets/vectors/reset_password.svg'),
          
            // Enter new password field
            FilledInputDesign(child: 
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: context.width * .02),
                labelText: 'Enter new password',
              ),
          
            )),
        
            SizedBox(height: context.height * .04),
        
              FilledInputDesign(child: 
            TextFormField(
              obscureText: false,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: context.width * .02),
                labelText: 'Confirm new password',
              ),
          
            )),
        
            SizedBox(height: context.height * .12),
        
            CustomButton(
              onPressed: () {
                // Navigator.of(context).pushNamed(ChangePasswordScreen.routeAddress);
              },
              title: 'Change Password',
            ),
          ],),
        ),
      ),
    );
  }
}