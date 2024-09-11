import 'package:backmate/src/shared/filled_input_design.dart';

import '/src/extension/context_extension.dart';
import '/src/features/sign_up/presentation/widgets/signup_header.dart';
import 'package:flutter/material.dart';

class SignUpS extends StatefulWidget {
  static const routeAddress = '/sign-up';
  static const routeName = 'Sign Up';
  const SignUpS({super.key});

  @override
  State<SignUpS> createState() => _SignUpSState();
}

class _SignUpSState extends State<SignUpS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SignupHeader(),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: context.width * .04,
                vertical: context.height * .02),
            margin: EdgeInsets.only(top: context.height * .18),
            decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(30)),
                color: context.colorScheme.surface),
            child: SingleChildScrollView(
              child: SizedBox(
                height: context.height * .82,
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: context.colorScheme.secondaryContainer
                                .withOpacity(.3),
                            border: Border.all(
                                color: context.colorScheme.secondaryContainer),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: context.height * .02,
                              horizontal: context.width * .04),
                          child: CircleAvatar(
                            radius: context.height * .06,
                            backgroundColor:
                                context.colorScheme.secondaryContainer,
                            child: Icon(Icons.add_a_photo,
                                size: context.height * .03,
                                color: context.colorScheme.secondary),
                          ),
                        ),
                      ),
                      SizedBox(height: context.height * .03),
                      FilledInputDesign(
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: context.width * .02,
                                  vertical: context.height * .005),
                              suffixIcon: const Icon(Icons.person),
                              labelText: 'Enter Name',
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(height: context.height * .03),
                      FilledInputDesign(
                        child: DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: context.width * .02,
                                  vertical: context.height * .005),
                              labelText: 'Select Gender',
                              border: InputBorder.none),
                          items: ['Male', 'Female', 'Other']
                              .map((gender) => DropdownMenuItem<String>(
                                    value: gender,
                                    child: Text(gender),
                                  ))
                              .toList(),
                          onChanged: (value) {},
                        ),
                      ),
                      SizedBox(height: context.height * .03),
                      FilledInputDesign(
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: context.width * .02,
                                vertical: context.height * .005),
                            labelText: 'Enter Email ID',
                            border: InputBorder.none,
                            suffixIcon: const Icon(Icons.email),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      SizedBox(height: context.height * .03),
                      FilledInputDesign(
                        child: TextFormField(
                          decoration: InputDecoration(
                              suffixIcon: const Icon(Icons.phone),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: context.width * .02,
                                  vertical: context.height * .005),
                              labelText: 'Enter Phone No',
                              border: InputBorder.none),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      SizedBox(height: context.height * .03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(value: true, onChanged: (value) {}),
                          Expanded(
                            child: Text.rich(TextSpan(children: [
                              TextSpan(
                                  text: 'Accept ',
                                  style: TextStyle(
                                      color: context.colorScheme.outline)),
                              TextSpan(
                                  text: "Privacy Policy",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: context.colorScheme.surfaceTint)),
                              TextSpan(
                                  text: ' & ',
                                  style: TextStyle(
                                      color: context.colorScheme.outline)),
                              TextSpan(
                                  text: "Terms of Uses.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: context.colorScheme.surfaceTint)),
                            ])),
                          )
                        ],
                      ),
                      SizedBox(height: context.height * .03),
                      FilledButton(
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                          minimumSize:
                              Size(context.width * .9, context.height * .06),
                        ),
                        child: Text(
                          'Sign Up',
                          style: context.textTheme.bodyLarge!.copyWith(
                              color: context.colorScheme.onPrimary,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(20.0),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children: [
      //       CircleAvatar(
      //         radius: 50,
      //         backgroundColor: Colors.grey[300],
      //         child: Icon(Icons.add_a_photo, size: 40, color: Colors.grey[600]),
      //       ),
      //       SizedBox(height: 20),
      //       TextFormField(
      //         decoration: InputDecoration(
      //           labelText: 'Enter Name',
      //           border: OutlineInputBorder(),
      //         ),
      //       ),
      //       SizedBox(height: 20),
      //       DropdownButtonFormField<String>(
      //         decoration: InputDecoration(
      //           labelText: 'Select Gender',
      //           border: OutlineInputBorder(),
      //         ),
      //         items: ['Male', 'Female', 'Other']
      //             .map((gender) => DropdownMenuItem<String>(
      //                   value: gender,
      //                   child: Text(gender),
      //                 ))
      //             .toList(),
      //         onChanged: (value) {},
      //       ),
      //       SizedBox(height: 20),
      //       TextFormField(
      //         decoration: InputDecoration(
      //           labelText: 'Enter Email ID',
      //           border: OutlineInputBorder(),
      //           suffixIcon: Icon(Icons.email),
      //         ),
      //         keyboardType: TextInputType.emailAddress,
      //       ),
      //       SizedBox(height: 20),
      //       TextFormField(
      //         decoration: InputDecoration(
      //           labelText: 'Enter Phone No',
      //           border: OutlineInputBorder(),
      //         ),
      //         keyboardType: TextInputType.phone,
      //       ),
      //       SizedBox(height: 20),
      //       TextFormField(
      //         decoration: InputDecoration(
      //           labelText: 'Enter Aadhaar No',
      //           border: OutlineInputBorder(),
      //           suffixIcon: ElevatedButton(
      //             onPressed: () {},
      //             child: Text('Verify'),
      //           ),
      //         ),
      //         keyboardType: TextInputType.number,
      //       ),
      //       SizedBox(height: 20),
      //       Row(
      //         children: [
      //           Checkbox(value: true, onChanged: (value) {}),
      //           Expanded(
      //             child: Text(
      //               'Accept Privacy Policy & Terms of Uses.',
      //               style: TextStyle(fontSize: 14),
      //             ),
      //           ),
      //         ],
      //       ),
      //       SizedBox(height: 20),
      //       ElevatedButton(
      //         onPressed: () {},
      //         style: ElevatedButton.styleFrom(
      //           backgroundColor: Colors.teal,
      //           padding: EdgeInsets.symmetric(vertical: 15),
      //         ),
      //         child: Text('Sign Up', style: TextStyle(fontSize: 18)),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
