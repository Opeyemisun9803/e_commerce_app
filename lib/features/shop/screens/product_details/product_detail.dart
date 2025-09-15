import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/shop/screens/product_details/product_detail_image_slider.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
              // product image slider
              const TProductImageSlider(),
          

          // product details (Video 22, 15min)
          Padding(
            padding: const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
            child: Column(
              children: [
                // rating and share button
                Row(
                  children: [
                    // rating
                    Row(
                      children: [
                        const Icon(Iconsax.star5, color: Colors.amber, size: 24),
                        const SizedBox(width: TSizes.spaceBtwItems / 2),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: '5.0', style: Theme.of(context).textTheme.bodyLarge),
                              const TextSpan(text: '199')
                            ]
                            )
                        )
                      ],
                    )

                    // share button

                  ],
                  )
                // price, title, stock & brand
                // attribute
                // check out button
                // description
                // reviews



              ],

            ),
            )


          ],
        
          

        ),

      ),
    );
  }
}

