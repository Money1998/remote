import 'package:flutter/material.dart';
import 'package:remote/commons/widgets/custom_button.dart';
import 'package:remote/commons/widgets/custom_text_field.dart';
import 'package:remote/constants/colors.dart';
import 'package:remote/constants/common_textstyles.dart';
import 'package:remote/constants/strings.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String? emailAddress, name;
  bool isProgressBar = false, isRegister = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      signUp,
                      style: t46w900cB,
                    ),
                    const Text(
                      pleRegister,
                      style: cbt20n,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomTextField(
                          controller: nameController,
                          labelText: enterName,
                          hint: enterName,
                          obscure: false,
                          iconVisible: false,
                          autoValidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return pleaseEnterName;
                            } else {}
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        CustomTextField(
                          controller: emailController,
                          labelText: enterEmail,
                          hint: enterEmail,
                          obscure: false,
                          iconVisible: false,
                          autoValidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return pleaseEnterEmailAddress;
                            } else {}
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        CustomTextField(
                          controller: phoneNumberController,
                          labelText: enterMobNo,
                          textInputType: TextInputType.number,
                          hint: enterMobNo,
                          obscure: false,
                          iconVisible: false,
                          autoValidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return pleaseEnterMobNo;
                            } else {}
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CustomButton(
                            title: login,
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                              }
                            }),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              haveAcc,
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) =>
                                //           const MobileNumberScreen(),
                                //     ));
                              },
                              child: const Text(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: darkBlue,
                                  decoration: TextDecoration.underline,
                                ),
                                login,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

}
