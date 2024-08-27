import 'package:filmflicks/features/registeraion/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpFormSection extends StatelessWidget {
  final GlobalKey<FormState> formkey;
  final AutovalidateMode autovalidateMode;
  final TextEditingController emailAdress;
  final TextEditingController fullName;
  final TextEditingController passWord;
  const SignUpFormSection({
    super.key,
    required this.formkey,
    required this.autovalidateMode,
    required this.emailAdress,
    required this.fullName,
    required this.passWord,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your full name';
              } else {
                return null;
              }
            },
            label: "Full Name",
            textEditingController: fullName,
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your email address';
              } else {
                return null;
              }
            },
            label: "Email Address",
            textEditingController: emailAdress,
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              } else {
                return null;
              }
            },
            label: "Password",
            textEditingController: passWord,
          ),
        ],
      ),
    );
  }
}
