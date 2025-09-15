import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentification/screens/password_confirmation/forgot_password.dart';
import 'package:t_store/features/authentification/screens/signup/signup.dart';
import 'package:t_store/navigation_menu.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class TLoginform extends StatelessWidget {
  const TLoginform({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
      
          // Email
          TextFormField(
             decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText:TTexts.email),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
      
          // Password
           TextFormField(
             decoration: const InputDecoration(prefixIcon: Icon(Iconsax.password_check), labelText:TTexts.password, suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields/2),
      
          // Remeber Me & Forgot Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Remeber Me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value){}),
                  const Text(TTexts.rememberMe),
                ],
              ),
      
              // Forgot Password
              TextButton(onPressed: ()=> Get.to(() => const ForgotPassword()), child: const Text(TTexts.forgetPassword)),
            ],
          ),
           const SizedBox(height: TSizes.spaceBtwSections),
      
          // sign In Button
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=> Get.to(() => const NavigationMenu()), child: const Text(TTexts.signIn))),
          const SizedBox(height: TSizes.spaceBtwItems),
    
          // Create Account Button
          SizedBox(width: double.infinity, 
          child: OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()), child: const Text(TTexts.createAccount))),
        ],
      ),
    )
    );
  }
}
