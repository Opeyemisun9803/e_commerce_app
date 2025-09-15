import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:t_store/common/styles/spacing_style.dart';
import 'package:t_store/common/widgets/form_divider.dart';
import 'package:t_store/features/authentification/screens/login/widgets/login_form.dart';
import 'package:t_store/features/authentification/screens/login/widgets/login_header.dart';
import 'package:t_store/common/widgets/social_button.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title & sub-Title
                const TLoginHeader(),
                  
                  // Form
                  const TLoginform(),

                  // Diver
                  TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Footer
                  const TSocialButtons()
               ],
             ),          
          ),
        ),
      );
  }
}





