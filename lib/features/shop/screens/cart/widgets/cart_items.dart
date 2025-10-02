import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/products/cart/add_remove_button.dart';
import 'package:t_store/common/widgets/products/cart/cart_menu.dart';
import 'package:t_store/common/widgets/products/product_cards/product_price_text.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showBackArrowButton  = true});

  final bool showBackArrowButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 14,
      separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwItems),             
      itemBuilder: (_, index) =>  Column(
        children: [
    
          // cart item
          const TCartItem(),
         if(showBackArrowButton) const SizedBox(height: TSizes.spaceBtwItems),
    
          //add remove button row with total price
          if(showBackArrowButton)
         const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Row(
                 children: [
                  
                  // Extra space
                   SizedBox(width: 70),
                   // Add & Remove Button
                   TProductQuanlityWithRemoveButton(),
                 ],
               ),
          
              //  Product total price
               TProductPriceText(price: '256')
            ],
          )
        ],
      ), 
    );
  


  
  }
}