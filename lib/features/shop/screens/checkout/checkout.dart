import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/rounded_container.dart';
import 'package:t_store/common/widgets/products/cart/coupon_widget.dart';
import 'package:t_store/common/widgets/success_screen/success_screen.dart';
import 'package:t_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/biling_address_section.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/biling_amount_section.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/biling_payment_section.dart';
import 'package:t_store/navigation_menu.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // items in  cart
             const TCartItems(showBackArrowButton: false),
             const SizedBox(height: TSizes.spaceBtwSections),

              // coupon textfield
             const TCouponCode(),
             const SizedBox(height: TSizes.spaceBtwSections),

              //  billing section
              TRoundedContaner(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [

                    // Pricing
                    TBilingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    // Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    // Payment Methods
                    TBilingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    // Address
                    TBilingAddressSection(),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
      
         // checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => 
            SuccessScreen(
              image: TImages.successfulPaymentIcon,
              title: 'Payment Sucessful',
              subTitle: 'Your item will be shipped soon',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            )), child:const Text('Checkout \$256.0')),
      ),
    );
  }
}

